package entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the restaurant_waiting_list database table.
 * 
 */
@Entity
@Table(name="restaurant_waiting_list")
@NamedQuery(name="RestaurantWaitingList.findAll", query="SELECT r FROM RestaurantWaitingList r")
public class RestaurantWaitingList implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int WLid;

	private String address;

	@Column(name="image_url")
	private String imageUrl;

	private String name;

	private String phone;

	private String specialty;

	@Column(name="user_id")
	private int userId;

	public RestaurantWaitingList() {
	}

	public int getWLid() {
		return this.WLid;
	}

	public void setWLid(int WLid) {
		this.WLid = WLid;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getImageUrl() {
		return this.imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSpecialty() {
		return this.specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}