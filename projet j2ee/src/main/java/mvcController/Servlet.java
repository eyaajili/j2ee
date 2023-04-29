package mvcController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Restaurant;
import mvcModels.RestaurantService;




/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     @EJB
     private  RestaurantService restaurantService;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        String action = request.getParameter("action");
        RequestDispatcher rd ;
        if (action.contentEquals("addRestaurant")){
            rd=request.getRequestDispatcher("addRestaurant.jsp");
            rd.forward(request, response);
      
            String name = request.getParameter("name");System.out.println("\n"+name);
            String phone = request.getParameter("phone");System.out.println("\n"+phone);
            String address = request.getParameter("address");System.out.println("\n"+address);
            String specialty = request.getParameter("specialty");System.out.println("\n"+specialty);
            String imageUrl = request.getParameter("imageUrl");System.out.println("\n"+imageUrl);

            if (name != null && !name.isEmpty() && phone != null && !phone.isEmpty() && address != null
                    && !address.isEmpty() && imageUrl != null && !imageUrl.isEmpty()) {
                // Create a new restaurant object with the provided details
                Restaurant restaurant = new Restaurant();
                restaurant.setName(name);
                restaurant.setPhone(phone);
                restaurant.setSpecialty(specialty);
                restaurant.setAddress(address);
                restaurant.setImageUrl(imageUrl);

                // Call the restaurant service to add the restaurant
                restaurantService.addRestaurant(restaurant);

                // Redirect to a confirmation page
                response.sendRedirect("listRestaurant.jsp");
            }
        }
    

	
		if(action!=null&&action.contentEquals("listRestaurant"))
		{
			List<Restaurant> restaurants = new ArrayList<Restaurant>();
			restaurants = restaurantService.getAllRestaurants();
			request.setAttribute("restaurants", restaurants);
			rd = request.getRequestDispatcher("listRestaurant.jsp");
			rd.forward(request, response);
			
			
		}
		if(action.contentEquals("deleteRestaurant"))
		{
			String Ridd = request.getParameter("Ridd");
			if(Ridd!=null)
			{int rid = Integer.parseInt(Ridd);
			List<Restaurant> restaurants = new ArrayList<Restaurant>();
			restaurants = restaurantService.deleteRestaurant(rid);
			request.setAttribute("restaurants", restaurants);
			rd = request.getRequestDispatcher("listRestaurant.jsp");
			rd.forward(request, response);
			}
		}
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
