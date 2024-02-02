var userId = null;
var pictureUrl = null;
//var docx = [{UserId : 'U9d2bbec5c40e6a3278f0f077b02c4c2e', Name : 'มวยมีไข้', Tel : '0000000000'}]
//var docx2 = JSON.stringify(docx)
const mongodbUri = "https://ap-southeast-1.aws.data.mongodb-api.com/app/application-0-nktdb/endpoint/sheet2mongo";

function doGet(e) {
  // userId = e.parameter.userId;
  userId = 'U9d2bbec5c40e6a3278f0f077b02c4c2ff'
  pictureUrl = '12'
  // pictureUrl = e.parameter.pictureUrl;
  var template = HtmlService.createTemplateFromFile("index");
   
  return template.evaluate().setTitle("สถานะงาน")
  .addMetaTag('viewport', 'width=device-width, initial-scale=1, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no')
  .setXFrameOptionsMode(HtmlService.XFrameOptionsMode.ALLOWALL);

}

function insertFixer(jsonData) {
  try { 
    // ใช้ jsonData ตรงนี้แทน docx2
    Logger.log(jsonData)
    if (checkDup(jsonData) > 0) {
      return { status:"OK" , dup : "dup"}
    } else {
      const insertFixerOpt = {
        header: 'Fixer',
        'contentType': 'application/json',
        method: 'post',
        payload: JSON.stringify({ header: "Fixer", query: jsonData })
      };

      const fixerRes = UrlFetchApp.fetch(mongodbUri + "/insert", insertFixerOpt);
      const fixerId = fixerRes.getContentText().replace(/["\\]/g, '');

      console.log(fixerRes.getResponseCode());
      console.log(fixerId);
      if (fixerRes.getResponseCode() === 200 && fixerId !== "") {
        return { status:"OK" , dup : "no"} 
      } else {
        return { status:"Error" , dup : "no"}
      }
    }
  } catch (e) {
    Logger.log(e);
    return { status:"Error" , dup : "no"}
  }
}


function checkDup(docx2) {
  const document = JSON.parse(docx2);
  const checkDupOpt = {
    method : 'post',
    payload : JSON.stringify( { header : 'Fixer' , query : {UserId : document.UserId} } )
  }

  const checkRes = UrlFetchApp.fetch(mongodbUri + "/find", checkDupOpt);
  Logger.log(JSON.parse(checkRes.getContentText()).length);
  Logger.log(checkRes);
  return JSON.parse(checkRes.getContentText()).length;

}
