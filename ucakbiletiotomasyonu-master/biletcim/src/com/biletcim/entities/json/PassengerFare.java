package com.biletcim.entities.json;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
/**
 * Awesome Pojo Generator
 * */
public class PassengerFare{
  @SerializedName("TotalFare")
  @Expose
  private TotalFare TotalFare;
  @SerializedName("Taxes")
  @Expose
  private Taxes Taxes;
  @SerializedName("BaseFare")
  @Expose
  private BaseFare BaseFare;
  @SerializedName("FareBaggageAllowance")
  @Expose
  private FareBaggageAllowance FareBaggageAllowance;
  public void setTotalFare(TotalFare TotalFare){
   this.TotalFare=TotalFare;
  }
  public TotalFare getTotalFare(){
   return TotalFare;
  }
  public void setTaxes(Taxes Taxes){
   this.Taxes=Taxes;
  }
  public Taxes getTaxes(){
   return Taxes;
  }
  public void setBaseFare(BaseFare BaseFare){
   this.BaseFare=BaseFare;
  }
  public BaseFare getBaseFare(){
   return BaseFare;
  }
  public void setFareBaggageAllowance(FareBaggageAllowance FareBaggageAllowance){
   this.FareBaggageAllowance=FareBaggageAllowance;
  }
  public FareBaggageAllowance getFareBaggageAllowance(){
   return FareBaggageAllowance;
  }
  
	public PassengerFare(com.biletcim.entities.json.TotalFare totalFare, com.biletcim.entities.json.Taxes taxes,
			com.biletcim.entities.json.BaseFare baseFare,
			com.biletcim.entities.json.FareBaggageAllowance fareBaggageAllowance) {
		super();
		TotalFare = totalFare;
		Taxes = taxes;
		BaseFare = baseFare;
		FareBaggageAllowance = fareBaggageAllowance;
	}
  
  
}