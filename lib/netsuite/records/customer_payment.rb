module NetSuite
  module Records
    class CustomerPayment
      include Support::Fields
      include Support::RecordRefs

      fields :applied, :auth_code, :auto_apply, :balance, :cc_approved, :cc_avs_street_match, :cc_avs_zip_match,
        :cc_expire_date, :cc_name, :cc_number, :cc_security_code, :cc_security_code_match, :cc_street, :cc_zip_code,
        :charge_it, :check_num, :created_date, :currency_name, :debit_card_issue_no, :exchange_rate, :ignore_avs,
        :last_modified_date, :memo, :payment, :pending, :pn_ref_num, :status, :three_d_status_code, :total, :tran_date,
        :unapplied, :undep_funds, :valid_from

      field :custom_field_list, CustomFieldList

      record_refs :account, :ar_acct, :credit_card, :credit_card_processor, :custom_form, :customer, :department, :klass,
        :location, :payment_method, :posting_period, :subsidiary

      def initialize(attributes = {})
        initialize_from_attributes_hash(attributes)
      end

    end
  end
end
