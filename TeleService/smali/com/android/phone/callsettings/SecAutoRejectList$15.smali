.class Lcom/android/phone/callsettings/SecAutoRejectList$15;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$15;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$15;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v0, p3}, Lcom/android/phone/callsettings/SecAutoRejectList;->-set3(Lcom/android/phone/callsettings/SecAutoRejectList;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$15;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->criteriaSub:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$15;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get8(Lcom/android/phone/callsettings/SecAutoRejectList;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$15;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get10(Lcom/android/phone/callsettings/SecAutoRejectList;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$15;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecAutoRejectList;->checkErrorText()Z

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
