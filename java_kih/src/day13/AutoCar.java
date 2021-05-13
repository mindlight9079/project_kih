package day13;

public class AutoCar extends Car {
	
	public AutoCar (String type, String company) {
		super(type, company);
		super.setGear('P');
	}
	
	public void setGear(char gear) {
		switch(gear){
			case 'P','D','N','R' :
				super.setGear(gear);
				break;
			default :
				super.setGear('P');
		}
	}

}
