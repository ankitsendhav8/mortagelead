import AuthService from '../../services/auth.service';
class AuthController {
  constructor(authService) {
    this.AuthService = authService;
  }
  leadFormAdd = async (req, res) => {
    try {
      const data = req.body;

      let leadDetails = {
        vCampaignId: data.lp_campaign_id,
        vFirstName: data.first_name,
        vLastName: data.last_name,
        vPhoneCell: data.phone_cell,
        vAddress: data.address,
        vCity: data.city,
        vState: data.state,
        vZipCode: data.zip_code,
        vEmailAddress: data.email_address,
        vProperty_type: data.property_type,
        vCreditDropdown: data.credit_dropdown,
        vPropertyUse: data.property_use,
        vMilitaryStatus: data.military_status,
        vLoanType: data.loan_type,
        vInterestRate: data.interest_rate,
        vMortgageBalance: data.mortgage_balance,
        vHomeValue: data.home_value,
        vCashOut: data.cash_out,
        iLoanAmount: data.loan_amount,
        vMortgageType: data.mortgage_type,
        vOccupationDropdown: data.occupation_dropdown,
        vLoanPurpose: data.loan_purpose,
      };
      let Leaddata = await AuthService.addLeadData(leadDetails);
      if (Leaddata) {
        let getLeadDetail = await AuthService.getLeadData(Leaddata[0]);
        console.log(getLeadDetail);
        if (getLeadDetail) {
          let finalResponse = {
            Leadid: getLeadDetail[0].Leadid,
          };
          console.log(finalResponse);
          res.status(200).json({
            success: 1,
            message: 'data injected successfully',
            data: finalResponse,
          });
        } else {
          res.status(200).json({
            success: 1,
            message: 'no details find',
            data: finalResponse,
          });
        }
      } else {
        res.status(200).json({
          success: 0,
          message: 'Something went wrong, please try again',
          data: {},
        });
      }
    } catch (err) {
      console.log(err);
      res.status(500).json({
        success: 0,
        message: err.code,
      });
    }
  };
}
export default new AuthController(AuthService);
