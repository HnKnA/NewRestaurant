#pragma checksum "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "35010aac64554215b12629432b21f127beabebdc"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Menu_MenuFood), @"mvc.1.0.view", @"/Views/Menu/MenuFood.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\_ViewImports.cshtml"
using RestaurantPOS;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\_ViewImports.cshtml"
using RestaurantPOS.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"35010aac64554215b12629432b21f127beabebdc", @"/Views/Menu/MenuFood.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"4cd24f2504c31cab6a2e66182c9f9a4a93fc420e", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Menu_MenuFood : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<FoodViewModel>>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Menu", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "MenuFood", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "InsertFoodToCart", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\n");
#nullable restore
#line 2 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
  
    ViewData["Title"] = "MenuFood";
    Layout = "~/Views/Shared/_Layout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral("\n");
            WriteLiteral(@"<div class=""section"">
    <!-- container -->
    <div class=""container"">
        <!-- row -->
        <div class=""row"">
            <!-- ASIDE -->
            <div id=""aside"" class=""col-md-3"">
                <!-- aside Widget -->
                <div class=""aside"">
                    <h3 class=""aside-title""  style="" margin-bottom: 20px; text-transform: capitalize; text-align: left; font-size: 26px; font-weight: 600; font-family: satisfy,cursive;"">Danh Mục Món</h3>
                    <div class=""checkbox-filter"">
                        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "35010aac64554215b12629432b21f127beabebdc5550", async() => {
                WriteLiteral(@"
                            <div class=""input-checkbox"">
                                <input type=""checkbox"" id=""category-1"" value=""Salad"" name=""listCategory[]"">
                                <label for=""category-1""
                                        style="" margin-bottom: 20px; text-transform: capitalize; text-align: left; font-size: 16px; font-weight: 400; font-family: Florence, cursive;""
                                       >
                                    <span></span>
                                    Salad
                                </label>
                            </div>
                            <div class=""input-checkbox"">
                                <input type=""checkbox"" id=""category-2"" value=""monhapxao"" name=""listCategory[]"">
                                <label for=""category-2""
                                        style="" margin-bottom: 20px; text-transform: capitalize; text-align: left; font-size: 16px; font-weight: 400; font-family: Florence, cursive;""
  ");
                WriteLiteral(@"                                     >
                                    <span></span>
                                    Món Hấp Xào
                                </label>
                            </div>
                            <div class=""input-checkbox"">
                                <input type=""checkbox"" id=""category-3"" value=""monnong"" name=""listCategory[]"">
                                <label for=""category-3""
                                        style="" margin-bottom: 20px; text-transform: capitalize; text-align: left; font-size: 16px; font-weight: 400; font-family: Florence, cursive;""
                                       >
                                    <span></span>
                                    Món Nóng
                                </label>
                            </div>
                            <div class=""input-checkbox"">
                                <input type=""checkbox"" id=""category-4"" value=""monchienvabanh"" name=""listCategory[]"">
                   ");
                WriteLiteral(@"             <label for=""category-4""
                                        style="" margin-bottom: 20px; text-transform: capitalize; text-align: left; font-size: 16px; font-weight: 400; font-family: Florence, cursive;""
                                       >
                                    <span></span>
                                    Món Chiên và Bánh
                                </label>
                            </div>
                            <div class=""input-checkbox"">
                                <input type=""checkbox"" id=""category-5"" value=""monnuong"" name=""listCategory[]"">
                                <label for=""category-5""
                                        style="" margin-bottom: 20px; text-transform: capitalize; text-align: left; font-size: 16px; font-weight: 400; font-family: Florence, cursive;""
                                       >
                                    <span></span>
                                    Món Nướng
                                </label");
                WriteLiteral(@">
                            </div>
                            <div class=""input-checkbox"">
                                <input type=""checkbox"" id=""category-6"" value=""montrangmieng"" name=""listCategory[]"">
                                <label for=""category-6""
                                        style="" margin-bottom: 20px; text-transform: capitalize; text-align: left; font-size: 16px; font-weight: 400; font-family: Florence, cursive;""
                                       >
                                    <span></span>
                                    Món Tráng Miệng
                                </label>
                            </div>
                            <div class=""input-checkbox"">
                                <input type=""checkbox"" id=""category-7"" value=""douong"" name=""listCategory[]"">
                                <label for=""category-7""
                                        style="" margin-bottom: 20px; text-transform: capitalize; text-align: left; font-size: 16px; fo");
                WriteLiteral(@"nt-weight: 400; font-family: Florence, cursive;""
                                       >
                                    <span></span>
                                    Đồ Uống
                                </label>
                            </div>
                            <div class=""input-checkbox"">
                                <input type=""checkbox"" id=""category-8"" value=""monnuoc"" name=""listCategory[]"">
                                <label for=""category-8""
                                        style="" margin-bottom: 20px; text-transform: capitalize; text-align: left; font-size: 16px; font-weight: 400; font-family: Florence, cursive;""
                                       >
                                    <span></span>
                                    Món Nước
                                </label>
                            </div>
                            <div class=""input-checkbox"">
                                <input type=""checkbox"" id=""category-9"" value=""banhmicha"" ");
                WriteLiteral(@"name=""listCategory[]"">
                                <label for=""category-9""
                                        style="" margin-bottom: 20px; text-transform: capitalize; text-align: left; font-size: 16px; font-weight: 400; font-family: Florence, cursive;""
                                       >
                                    <span></span>
                                    Bánh mì,Chả
                                </label>
                            </div>
                            <div class=""input-checkbox"">
                                <input type=""submit"" id=""category-10"" value=""Lọc danh sách"" style=""background-color:yellow;margin-bottom: 20px; text-transform: capitalize; text-align: left; font-size: 16px; font-weight: 600; font-family: satisfy,cursive;"" >
                                <label for=""category-10"">
                                </label>
                            </div>
                        ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Controller = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\n                    </div>\n                </div>\n            </div>\n            <!-- /ASIDE -->\n            <!-- STORE -->\n            <div id=\"store\" class=\"col-md-9\">\n                <!-- store products -->\n                <div class=\"row\">\n");
#nullable restore
#line 115 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
                       int idx = -1;
                        string[] Categoryvarchar = new string[] {"Salad", "monhapxao", "monnong", "monchienvabanh", "monnuong", "montrangmieng", "douong", "monnuoc", "banhmicha" };
                        string[] Categorynvarchar = new string[] {"Salad:", "Món Hấp Xào:", "Món Nóng:", "Món Chiên và Bánh:", "Món Nướng:", "Món Tráng Miệng:", " Đồ Uống:", "Món Nước:", "Bánh mì,Chả:" };
                        foreach(var cate in Categoryvarchar)
                        {   
                            idx++;
                            int print = 0;


#line default
#line hidden
#nullable disable
            WriteLiteral("                            <div class=\"row\">\n");
#nullable restore
#line 124 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
                                   foreach (var food in Model)
                                      {
                                         if (food.Category == cate && print==0)
                                             {

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                                                <div class=""row"">
                                                    <p 
                                                       style=""margin-bottom: 20px; text-transform: capitalize; text-align: left; font-size: 2rem; font-weight: 600; font-family: satisfy,cursive; ""
                                                     >
                                                    ");
#nullable restore
#line 132 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
                                               Write(Categorynvarchar[idx]);

#line default
#line hidden
#nullable disable
            WriteLiteral("\n                                                    </p> \n                                                 </div>\n");
#nullable restore
#line 135 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
                                                 print= 1;
                                             }
                                         if (food.Category == cate)
                                         {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                            <!-- product -->\n                                            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "35010aac64554215b12629432b21f127beabebdc16798", async() => {
                WriteLiteral("\n                                                <input type=\"hidden\" name=\"food.insertFoodViewModel.FoodId\"");
                BeginWriteAttribute("value", " value=\"", 8979, "\"", 8995, 1);
#nullable restore
#line 141 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
WriteAttributeValue("", 8987, food.Id, 8987, 8, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" />\n                                                <input type=\"hidden\" name=\"food.insertFoodViewModel.Quantity\" value=1 />\n                                                <input type=\"hidden\" name=\"food.insertFoodViewModel.Price\"");
                BeginWriteAttribute("value", " value=\"", 9227, "\"", 9250, 1);
#nullable restore
#line 143 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
WriteAttributeValue("", 9235, food.UnitPrice, 9235, 15, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" />\n                                                <input type=\"hidden\" name=\"food.insertFoodViewModel.UnitPrice\"");
                BeginWriteAttribute("value", " value=\"", 9365, "\"", 9388, 1);
#nullable restore
#line 144 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
WriteAttributeValue("", 9373, food.UnitPrice, 9373, 15, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(@" />
                                                <div class=""col-md-4 col-xs-6"">
                                                    <div class=""product"">
                                                        <div class=""product-img"">
                                                            <img");
                BeginWriteAttribute("src", " src=\"", 9693, "\"", 9713, 1);
#nullable restore
#line 148 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
WriteAttributeValue("", 9699, food.ImageURL, 9699, 14, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                BeginWriteAttribute("alt", " alt=\"", 9714, "\"", 9720, 0);
                EndWriteAttribute();
                WriteLiteral(">\n                                                        </div>\n                                                        <div class=\"product-body\">\n                                                            <h3 class=\"product-name\"><a");
                BeginWriteAttribute("href", " href=\"", 9956, "\"", 10007, 1);
#nullable restore
#line 151 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
WriteAttributeValue("", 9963, Url.Action("Details", new { id = food.Id }), 9963, 44, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(">");
#nullable restore
#line 151 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
                                                                                                                                       Write(food.Name);

#line default
#line hidden
#nullable disable
                WriteLiteral("</a></h3>\n                                                            <h4 class=\"product-price\">");
#nullable restore
#line 152 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
                                                                                 Write(food.UnitPrice);

#line default
#line hidden
#nullable disable
                WriteLiteral(@" VND</h4>
                                                            <div class=""product-rating"">
                                                                <i class=""fa fa-star""></i>
                                                                <i class=""fa fa-star""></i>
                                                                <i class=""fa fa-star""></i>
                                                                <i class=""fa fa-star""></i>
                                                                <i class=""fa fa-star""></i>
                                                            </div>
                                                        </div>
                                                        <div class=""add-to-cart"">
                                                            <button class=""add-to-cart-btn"" type=""submit"">
                                                                <i class=""fa fa-shopping-cart""></i> add to
                                            ");
                WriteLiteral(@"                    cart
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_3.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Controller = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\n");
#nullable restore
#line 170 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
                                         }

#line default
#line hidden
#nullable disable
            WriteLiteral("                                            <!-- /product -->\n");
#nullable restore
#line 172 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
                                   }

#line default
#line hidden
#nullable disable
            WriteLiteral("                            </div>\n");
#nullable restore
#line 174 "C:\Users\A.Tuan\OneDrive\Máy tính\SoftwareEngineering-main\SoftwareEngineering-main\RestaurantPOS\Views\Menu\MenuFood.cshtml"
                            }
                        

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                </div>
                <!-- /store products -->
                <!-- store bottom filter -->
                <div class=""store-filter clearfix"">
                    <ul class=""store-pagination"">
                        <li class=""active"">1</li>
                        <li><a href=""#"">2</a></li>
                        <li><a href=""#"">3</a></li>
                        <li><a href=""#"">4</a></li>
                        <li><a href=""#""><i class=""fa fa-angle-right""></i></a></li>
                    </ul>
                </div>
                <!-- /store bottom filter -->
            </div>
            <!-- /STORE -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>");
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<FoodViewModel>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591