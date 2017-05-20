package uts;

import java.io.*;
import java.util.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;
import org.xml.sax.*;

public class CustomersPrinter {

    public static final Printer name = new NamePrinter();
    public static final Printer plain = new PlainPrinter();
    public static final Printer xml = new XMLPrinter();
    public static final Printer html = new HTMLPrinter();

    public static void main(String[] args) throws ParserConfigurationException, SAXException, IOException {
        PrintWriter out = new PrintWriter(new OutputStreamWriter(System.out), true);
        Scanner keyboard = new Scanner(System.in);

        System.out.println("Select an output mode:");
        System.out.println("1: name");
        System.out.println("2: plain");
        System.out.println("3: xml");
        System.out.println("4: html");
        System.out.print("enter choice: ");
        int mode = keyboard.nextInt();
        switch (mode) {
            case 1:
                name.print("web/WEB-INF/flights.xml", out);
                break;
            case 2:
                plain.print("web/WEB-INF/flights.xml", out);
                break;
            case 3:
                xml.print("web/WEB-INF/flights.xml", out);
                break;
            case 4:
                html.print("web/WEB-INF/flights.xml", out);
                break;
        }
    }

    public static abstract class Printer {

        public abstract void print(Node node, PrintWriter out);

        public void print(String filePath, Writer out) throws ParserConfigurationException, SAXException, IOException {
            print(filePath, new PrintWriter(out, true));
        }

        public void print(String filePath, PrintWriter out) throws ParserConfigurationException, SAXException, IOException {
            FileInputStream in = new FileInputStream(filePath);
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(in);
            Element root = document.getDocumentElement();
            print(root, out);
            out.flush();
        }
    }

    public static class NamePrinter extends Printer {

        public void print(Node node, PrintWriter out) {
            //System.out.println(((Element)node).getElementsByTagName("name").item(0));
            Element root = (Element) node;
            Element user = (Element) root.getElementsByTagName("flight").item(0);
            Element departure = (Element) user.getElementsByTagName("departure").item(0);
            //System.out.println("The first user is " + departure.getFirstChild().getNodeValue());

            if (departure.getFirstChild().getNodeValue().equals("01-06-2017")) {
                
                Element id = (Element)user.getElementsByTagName("id").item(0);
                System.out.println(id.getFirstChild().getNodeValue());
            }
        }
    }

    public static class PlainPrinter extends Printer {

        public void print(Node node, PrintWriter out) {
            int type = node.getNodeType();
            String name = node.getNodeName();
            String value = node.getNodeValue();

            switch (type) {
                case Node.ELEMENT_NODE:
                    out.print(name);
                    NodeList children = node.getChildNodes();
                    for (int i = 0; i < children.getLength(); i++) {
                        Node child = children.item(i);

                        print(child, out);
                    }
                    break;
                case Node.TEXT_NODE:
                    out.print(value);
                    break;
            }
        }
    }

    public static class XMLPrinter extends Printer {

        public void print(Node node, PrintWriter out) {
            int type = node.getNodeType();
            String name = node.getNodeName();
            String value = node.getNodeValue();

            switch (type) {
                case Node.ELEMENT_NODE:
                    out.print("<" + name + ">");
                    NodeList children = node.getChildNodes();
                    for (int i = 0; i < children.getLength(); i++) {
                        Node child = children.item(i);
                        print(child, out);
                    }
                    out.print("</" + name + ">");
                    break;
                case Node.TEXT_NODE:
                    out.print(value);
                    break;
            }
        }
    }

    public static class HTMLPrinter extends Printer {

        public void print(Node node, PrintWriter out) {
            int type = node.getNodeType();
            String name = node.getNodeName();
            String value = node.getNodeValue();

            switch (type) {
                case Node.ELEMENT_NODE:
                    if (name.equals("flights")) {
                        name = "table";
                    } else if (name.equals("flight")) {
                        name = "tr";
                    } else {
                        name = "td width=\"22%\"";
                    }

                    out.print("<" + name + ">");
                    if (name.equals("table")) {
                        out.print("\n<tr><td>Flight ID</td><td>Date</td><td>Departure</td><td>return</td><td>Price</td></tr>");
                    }
                    NodeList children = node.getChildNodes();
                    for (int i = 0; i < children.getLength(); i++) {
                        Node child = children.item(i);
                        print(child, out);
                    }
                    out.print("</" + name + ">");
                    break;
                case Node.TEXT_NODE:
                    out.print(value);
                    break;
            }
        }
    }
}
