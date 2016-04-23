Public Class Contact
    Inherits Page
    Public Property nopostcount() As Integer
        Get


            Return DirectCast(ViewState("nopostcount"), Integer)
        End Get
        Set(ByVal value As Integer)
            ViewState("nopostcount") = value
        End Set
    End Property

    Public Property btcount() As Integer
        Get

            Return DirectCast(ViewState("btcount"), Integer)
        End Get
        Set(ByVal value As Integer)
            ViewState("btcount") = value
        End Set
    End Property

    Public Property pagecount() As Integer
        Get

            Return DirectCast(ViewState("pagecount"), Integer)
        End Get
        Set(ByVal value As Integer)
            ViewState("pagecount") = value
        End Set
    End Property
    Public Property postcount() As Integer
        Get

            Return DirectCast(ViewState("postcount"), Integer)
        End Get
        Set(ByVal value As Integer)
            ViewState("postcount") = value
        End Set
    End Property

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If IsPostBack Then
            postcount = postcount + 1
        Else
            pagecount() = 0
            postcount() = 0
            nopostcount() = 0
            btcount() = 0
            nopostcount = nopostcount + 1
        End If
        pagecount = pagecount + 1
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        btcount = btcount + 1

        Dim str As String
        str = String.Concat("Page loaded times : " + pagecount.ToString _
                        + "<br/>" + "Page post backed times " + postcount.ToString _
                        + "<br/>" + "Page not post backed times" + nopostcount.ToString _
                        + "<br/>" + "Button clicked times" + btcount.ToString + "<br/>"
                             )

        'Page.Response.Write(str.ToString + "<br/>" + TextBox1.Text.ToString
        '    )
        Me.Label1.Text = "fdgbdfmbjkfdb" + Environment.NewLine + TextBox1.Text.ToString

        DisplayErrorMessage(TextBox1.Text.ToString)
    End Sub


    Private Sub DisplayErrorMessage(ByVal errMsg As String)
        If Not String.IsNullOrEmpty(errMsg) And Not String.IsNullOrWhiteSpace(errMsg) Then
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "Message", String.Concat("alert(""", errMsg.Replace("""", "'"), """);"), True)
        End If
    End Sub

End Class