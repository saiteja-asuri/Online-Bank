package Model;

public class Account {
	protected String acc_number;
	protected String email;
	private String pin;
	protected int balance;
	public Account() {
		super();
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance=balance;
	}
	public String getUser_name() {
		return acc_number;
	}
	public String getAcc_number() {
		return acc_number;
	}
	public void setAcc_number(String acc_number) {
		this.acc_number = acc_number;
	}
	public void setUser_name(String acc_number) {
		this.acc_number = acc_number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String pin) {
		this.pin = pin;
	}
}
