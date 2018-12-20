1. Open the Red Hat 3scale Login screen.
1. Select the Red Hat Single Sign On option. This triggers an OAuth Flow and redirects you back to the Red Hat 3scale Dashboard.
1. Dismiss the How does 3Scale work? option which is displayed the first time you log in to Red Hat 3scale. The main Dashboard is displayed.
1. Click the `New API` link from the Dashboard.
1. On the New API screen choose the `Define Manually` checkbox
1. Enter the following `Name` and `System Name`
1. Leave the `Description` empty.
1. Click the `Add API` button in the bottom right of the UI.


<!-- ORIGINAL STAGING -->
<!-- https://fuse-flights-aggregator-evals-example-com-3scale-apicast-staging.apps.eshortis-9170.openshiftworkshop.com:443 -->
<!-- NEW STAGING -->
<!-- https://fuse-flights-aggregator-evals-exam-2-fu-4197.apps.eshortis-9170.openshiftworkshop.com -->

<!-- ORIGINAL PRODUCTION -->
<!-- https://fuse-flights-aggregator-evals-example-com-3scale-apicast-production.apps.eshortis-9170.openshiftworkshop.com:443 -->
<!-- NEW PRODUCTION -->
<!-- https://wt2-evals-example-com-3scale.apps.eshortis-9170.openshiftworkshop.com -->

Next
===
1. You should have been redirected to the `Overview` screen for your API
1. From here scroll down and choose `Configure APICast`
1. In the `Private Base URL` field, enter: `{THE URL}`
1. In the `Staging Public Base URL` field, enter: `{THE URL}`
1. Select `Update & test in Staging Environment`

## 3.3 Setting Fuse Aggregation App Endpoint Limits
=================================================
1. From the left hand menu select `Applications > Application Plans`
1. Click `Create Application Plan` on the right
1. Click the `Create Application Plan` button.
1. Select the `fuse-flights-aggregator-evals-example-com` from the `Applications Plans` list you were redirected to.

#### Set a limit of 5 calls per hour:
* On the Metrics, Methods, Limits & Pricing Rules section, select the `Limits (0)` tab.
* Click the New usage limit button.
* Set the `Period` to hour.
* Set the `Max. value` to 5.
* Select `Create usage limit.`

#### Create a new Application for the Developer Group, assigned to the Plan:
1. Using the top navigation bar choose `Audience`
1. Select the `Developer` account from the displayed list to open the Account Summary page.
1. Select the `(num) Application` item from the breadcrumb to view Applications.
1. Select the Create Application button in the top right.
1. Select the fuse-flights-aggregator-evals-example-com Plan in the Application plan dropdown.
1. Leave Service plan set to Default
1. Enter the following for Name and Description:
* fuse-flights-aggregator-evals-example-com
1. Select Create Application.

#### Set a custom User Key for the application:
1. On the fuse-flights-aggregator-evals-example-com application screen you were redirected to, scroll to the API Credentials section.
1. Click the green pencil icon beside the API User Key
1. In the `Set Custom User Key` modal dialog enter $KEY
1. Select `Set Custom Key`.


#### Check work
1. Select the Overview menu item in the side nav
1. Select the Configure APIcast button on the bottom right
1. Select the Update & test in Staging Environment button at the bottom again.
1. Check that a success message is displayed, and a green line along the left side of the page.

## 3.4. Create a new ActiveDocs Service
1. Select the `Active Docs` item from the left navigation menu
1. Select `Create your first spec`
1. Enter the following for Name and System name:
1. Enter the below content for the API JSON Spec.
1. Scroll down and select the Create Service button.

## 4.3. Verifying access to the API Service is limited
1. In the user_key field, enter:
2. Click the Try it out! button repeatedly until the Response Code is 0, this should happen after the fifth click (the hourly limit set earlier).
3. Select the Applications > Listing from the left menu.
4. Select the fuse-flights-aggregator-evals-example-com application from the Applications list.
5. Scroll down to the Current Utilization section.

## 4.4. Monitoring the API Service
1. Select the Analytics > Usage from the left menu.