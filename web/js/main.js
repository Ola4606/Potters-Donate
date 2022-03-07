window.testFunction= () => {
    window.location.assign("/#processingPayment/?id=1234")
}




window.payWithPayStack= (email, amount) => {
    var handler = PaystackPop.setup({
        key: 'pk_live_14b92120a75df79918d0a3f4ba9f1b23fa1df9ba', // Replace with your public key
        email: email,
        amount: amount * 100, // the amount value is multiplied by 100 to convert to the lowest currency unit
        currency: 'NGN', // Use GHS for Ghana Cedis or USD for US Dollars
        ref: `stoneChurchApp${new Date().getTime()}`, // Replace with a reference you generated
        callback: function(response) {
          //this happens after the payment is completed successfully
                   //window.location.assign(`/#processingPayment?id=${response.reference}`);
                   let message = `Thank You Sir/Ma for your support of NGN${amount} to the The Potters Planet Teenage Church. God Bless You.`;
                   alert(message);
          // Make an AJAX call to your server with the reference to verify the transaction
        },
        onClose: function() {
          //
        },
      });
      handler.openIframe();
}