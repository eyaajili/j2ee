package entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the rating database table.
 * 
 */
@Entity
@NamedQuery(name="Rating.findAll", query="SELECT r FROM Rating r")
public class Rating implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int RAid;

	@Column(name="rating_value")
	private byte ratingValue;

	@Column(name="user_id")
	private int userId;

	//bi-directional many-to-one association to Restaurant
	@ManyToOne
	@JoinColumn(name="restaurant_id")
	private Restaurant restaurant;

	public Rating() {
	}

	public int getRAid() {
		return this.RAid;
	}

	public void setRAid(int RAid) {
		this.RAid = RAid;
	}

	public byte getRatingValue() {
		return this.ratingValue;
	}

	public void setRatingValue(byte ratingValue) {
		this.ratingValue = ratingValue;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Restaurant getRestaurant() {
		return this.restaurant;
	}

	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}

}