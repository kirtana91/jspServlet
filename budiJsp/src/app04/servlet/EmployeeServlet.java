package app04.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.javafx.collections.MappingChange.Map;

import app04.model.Address;
import app04.model.Employee;


@WebServlet("/employee")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Address address = new Address();
        address.setStreetName("Rue D'Anjou");
        address.setStreetNumber("5090B");
        address.setCity("Brossard");
        address.setState("Quebec");
        address.setZipCode("A1A B2B");
        address.setCountry("Canada");

        Employee employee = new Employee();
        employee.setId(1099);
        employee.setName("Charles Unjeye");
        employee.setAddress(address);
        request.setAttribute("employee", employee);

        Map<String, String> capitals = (Map<String, String>) new HashMap<String, String>();
        ((HashMap<String,String>) capitals).put("China", "Beijing");
        ((HashMap<String,String>) capitals).put("Austria", "Vienna");
        ((HashMap<String,String>) capitals).put("Australia", "Canberra");
        ((HashMap<String,String>) capitals).put("Canada", "Ottawa");
        request.setAttribute("capitals", capitals);

        RequestDispatcher rd =
                request.getRequestDispatcher("/employee.jsp");
        rd.forward(request, response);
    }
	}


