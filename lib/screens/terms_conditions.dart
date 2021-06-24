import 'package:flutter/material.dart';

class Terms_Conditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: height * 0.02),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: width * 0.05,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xFFD12BD1),
                    size: height * 0.04,
                  ),
                ),
                SizedBox(
                  width: width * 0.067,
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.01),
                  child: Text(
                    "Terms & Conditions",
                    style: TextStyle(
                        fontSize: height * 0.026, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Terms and condition",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "These terms and conditions (“Agreement”) set forth the general terms and conditions of your use of the goldidate.com website (“Website”), “Goldidate” mobile application (“Mobile Application”) and any of their related products and services (collectively, “Services”). This Agreement is legally binding between you (“User”, “you” or “your”) and Dux (“Dux”, “we”, “us” or “our”). By accessing and using the Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. If you are entering into this Agreement on behalf of a business or other legal entity, you represent that you have the authority to bind such entity to this Agreement, in which case the terms “User”, “you” or “your” shall refer to such entity. If you do not have such authority, or if you do not agree with the terms of this Agreement, you must not accept this Agreement and may not access and use the Services. You acknowledge that this Agreement is a contract between you and Dux, even though it is electronic and is not physically signed by you, and it governs your use of the Services.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Accounts and membership",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "You must be at least 18 years of age to use the Services. By using the Services and by agreeing to this Agreement you warrant and represent that you are at least 18 years of age. If you create an account on the Services, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. We may monitor and review new accounts before you may sign in and start using the Services. Providing false contact information of any kind may result in the termination of your account. You must immediately notify us of any unauthorized uses of your account or any other breaches of security. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. We may suspend, disable, or delete your account (or any part thereof) if we determine that you have violated any provision of this Agreement or that your conduct or content would tend to damage our reputation and goodwill. If we delete your account for the foregoing reasons, you may not re-register for our Services. We may block your email address and Internet protocol address to prevent further registration.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "User content",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "We do not own any data, information or material (collectively, “Content”) that you submit on the Services in the course of using the Service. You shall have sole responsibility for the accuracy, quality, integrity, legality, reliability, appropriateness, and intellectual property ownership or right to use of all submitted Content. We may monitor and review the Content on the Services submitted or created using our Services by you. You grant us permission to access, copy, distribute, store, transmit, reformat, display and perform the Content of your user account solely as required for the purpose of providing the Services to you. Without limiting any of those representations or warranties, we have the right, though not the obligation, to, in our own sole discretion, refuse or remove any Content that, in our reasonable opinion, violates any of our policies or is in any way harmful or objectionable. You also grant us the license to use, reproduce, adapt, modify, publish or distribute the Content created by you or stored in your user account for commercial, marketing or any similar purpose.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Adult content",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "Please be aware that there may be certain adult or mature content available on the Services. Where there is mature or adult content, individuals who are less than 18 years of age or are not permitted to access such content under the laws of any applicable jurisdiction may not access such content. If we learn that anyone under the age of 18 seeks to conduct a transaction through the Services, we will require verified parental consent, in accordance with the Children’s Online Privacy Protection Act of 1998 (“COPPA”). Certain areas of the Services may not be available to children under 18 under any circumstances.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Billing and payments",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "You shall pay all fees or charges to your account in accordance with the fees, charges, and billing terms in effect at the time a fee or charge is due and payable. Where Services are offered on a free trial basis, payment may be required after the free trial period ends, and not when you enter your billing details (which may be required prior to the commencement of the free trial period). Sensitive and private data exchange happens over a SSL secured communication channel and is encrypted and protected with digital signatures, and the Services are also in compliance with PCI vulnerability standards in order to create as secure of an environment as possible for Users. Scans for malware are performed on a regular basis for additional security and protection. If, in our judgment, your purchase constitutes a high-risk transaction, we will require you to provide us with a copy of your valid government-issued photo identification, and possibly a copy of a recent bank statement for the credit or debit card used for the purchase. We reserve the right to change products and product pricing at any time. We also reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address/phone number provided at the time the order was made.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Accuracy of information",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "Occasionally there may be information on the Services that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, availability, promotions and offers. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information on the Services or Services is inaccurate at any time without prior notice (including after you have submitted your order). We undertake no obligation to update, amend or clarify information on the Services including, without limitation, pricing information, except as required by law. No specified update or refresh date applied on the Services should be taken to indicate that all information on the Services or Services has been modified or updated.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Third party services",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "If you decide to enable, access or use third party services, be advised that your access and use of such other services are governed solely by the terms and conditions of such other services, and we do not endorse, are not responsible or liable for, and make no representations as to any aspect of such other services, including, without limitation, their content or the manner in which they handle data (including your data) or any interaction between you and the provider of such other services. You irrevocably waive any claim against Dux with respect to such other services. Dux is not liable for any damage or loss caused or alleged to be caused by or in connection with your enablement, access or use of any such other services, or your reliance on the privacy practices, data security processes or other policies of such other services. You may be required to register for or log into such other services on their respective platforms. By enabling any other services, you are expressly permitting Dux to disclose your data as necessary to facilitate the use or enablement of such other service.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Backups",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "We perform regular backups of the Website and its Content and will do our best to ensure completeness and accuracy of these backups. In the event of the hardware failure or data loss we will restore backups automatically to minimize the impact and downtime.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Advertisements",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "During your use of the Services, you may enter into correspondence with or participate in promotions of advertisers or sponsors showing their goods or services through the Services. Any such activity, and any terms, conditions, warranties or representations associated with such activity, is solely between you and the applicable third party. We shall have no liability, obligation or responsibility for any such correspondence, purchase or promotion between you and any such third party.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Links to other resources",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "Although the Services may link to other resources (such as websites, mobile applications, etc.), we are not, directly or indirectly, implying any approval, association, sponsorship, endorsement, or affiliation with any linked resource, unless specifically stated herein. Some of the links on the Services may be affiliate links. This means if you click on the link and purchase an item, Dux will receive an affiliate commission. We are not responsible for examining or evaluating, and we do not warrant the offerings of, any businesses or individuals or the content of their resources. We do not assume any responsibility or liability for the actions, products, services, and content of any other third parties. You should carefully review the legal statements and other conditions of use of any resource which you access through a link on the Services. Your linking to any other off-site resources is at your own risk.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Prohibited uses",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "In addition to other terms as set forth in the Agreement, you are prohibited from using the Services or Content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Services, third party products and services, or the Internet; (h) to spam, phish, pharm, pretext, spider, crawl, or scrape; (i) for any obscene or immoral purpose; or (j) to interfere with or circumvent the security features of the Services, third party products and services, or the Internet. We reserve the right to terminate your use of the Services for violating any of the prohibited uses. ",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Intellectual property rights",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "Intellectual Property Rights means all present and future rights conferred by statute, common law or equity in or in relation to any copyright and related rights, trademarks, designs, patents, inventions, goodwill and the right to sue for passing off, rights to inventions, rights to use, and all other intellectual property rights, in each case whether registered or unregistered and including all applications and rights to apply for and be granted, rights to claim priority from, such rights and all similar or equivalent rights or forms of protection and any other results of intellectual activity which subsist or will subsist now or in the future in any part of the world. This Agreement does not transfer to you any intellectual property owned by Dux or third parties, and all rights, titles, and interests in and to such property will remain (as between the parties) solely with Dux. All trademarks, service marks, graphics and logos used in connection with the Services, are trademarks or registered trademarks of Dux or its licensors. Other trademarks, service marks, graphics and logos used in connection with the Services may be the trademarks of other third parties. Your use of the Services grants you no right or license to reproduce or otherwise use any of Dux or third party trademarks.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Disclaimer of warranty",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "You agree that such Service is provided on an as is and as available basis and that your use of the Services is solely at your own risk. We expressly disclaim all warranties of any kind, whether express or implied, including but not limited to the implied warranties of merchantability, fitness for a particular purpose and non-infringement. We make no warranty that the Services will meet your requirements, or that the Service will be uninterrupted, timely, secure, or error-free; nor do we make any warranty as to the results that may be obtained from the use of the Service or as to the accuracy or reliability of any information obtained through the Service or that defects in the Service will be corrected. You understand and agree that any material and/or data downloaded or otherwise obtained through the use of Service is done at your own discretion and risk and that you will be solely responsible for any damage or loss of data that results from the download of such material and/or data. We make no warranty regarding any goods or services purchased or obtained through the Service or any transactions entered into through the Service unless stated otherwise. No advice or information, whether oral or written, obtained by you from us or through the Service shall create any warranty not expressly made herein.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Limitation of liability",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "To the fullest extent permitted by applicable law, in no event will Dux, its affiliates, directors, officers, employees, agents, suppliers or licensors be liable to any person for any indirect, incidental, special, punitive, cover or consequential damages (including, without limitation, damages for lost profits, revenue, sales, goodwill, use of content, impact on business, business interruption, loss of anticipated savings, loss of business opportunity) however caused, under any theory of liability, including, without limitation, contract, tort, warranty, breach of statutory duty, negligence or otherwise, even if the liable party has been advised as to the possibility of such damages or could have foreseen such damages. To the maximum extent permitted by applicable law, the aggregate liability of Dux and its affiliates, officers, employees, agents, suppliers and licensors relating to the services will be limited to an amount greater of one dollar or any amounts actually paid in cash by you to Dux for the prior one month period prior to the first event or occurrence giving rise to such liability. The limitations and exclusions also apply if this remedy does not fully compensate you for any losses or fails of its essential purpose.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Indemnification",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "You agree to indemnify and hold Dux and its affiliates, directors, officers, employees, agents, suppliers and licensors harmless from and against any liabilities, losses, damages or costs, including reasonable attorneys' fees, incurred in connection with or arising from any third party allegations, claims, actions, disputes, or demands asserted against any of them as a result of or relating to your Content, your use of the Services or any willful misconduct on your part.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Severability",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "All rights and restrictions contained in this Agreement may be exercised and shall be applicable and binding only to the extent that they do not violate any applicable laws and are intended to be limited to the extent necessary so that they will not render this Agreement illegal, invalid or unenforceable. If any provision or portion of any provision of this Agreement shall be held to be illegal, invalid or unenforceable by a court of competent jurisdiction, it is the intention of the parties that the remaining provisions or portions thereof shall constitute their agreement with respect to the subject matter hereof, and all such remaining provisions or portions thereof shall remain in full force and effect.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Dispute resolution",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "The formation, interpretation, and performance of this Agreement and any disputes arising out of it shall be governed by the substantive and procedural laws of Israel without regard to its rules on conflicts or choice of law and, to the extent applicable, the laws of Israel. The exclusive jurisdiction and venue for actions related to the subject matter hereof shall be the courts located in Israel, and you hereby submit to the personal jurisdiction of such courts. You hereby waive any right to a jury trial in any proceeding arising out of or related to this Agreement. The United Nations Convention on Contracts for the International Sale of Goods does not apply to this Agreement.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Assignment",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "You may not assign, resell, sub-license or otherwise transfer or delegate any of your rights or obligations hereunder, in whole or in part, without our prior written consent, which consent shall be at our own sole discretion and without obligation; any such assignment or transfer shall be null and void. We are free to assign any of its rights or obligations hereunder, in whole or in part, to any third party as part of the sale of all or substantially all of its assets or stock or as part of a merger.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Changes and amendments",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "We reserve the right to modify this Agreement or its terms relating to the Services at any time, effective upon posting of an updated version of this Agreement on the Services. When we do, we will revise the updated date at the bottom of this page. Continued use of the Services after any such changes shall constitute your consent to such changes.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Acceptance of these terms",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "You acknowledge that you have read this Agreement and agree to all its terms and conditions. By accessing and using the Services you agree to be bound by this Agreement. If you do not agree to abide by the terms of this Agreement, you are not authorized to access or use the Services.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "Contacting us",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "If you would like to contact us to understand more about this Agreement or wish to contact us concerning any matter relating to it, you may send an email to info@goldidate.com.",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: Text(
                  "This document was last updated on April 30, 2021",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontSize: height * 0.019),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
