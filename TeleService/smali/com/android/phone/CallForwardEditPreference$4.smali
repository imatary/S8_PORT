.class Lcom/android/phone/CallForwardEditPreference$4;
.super Ljava/lang/Object;
.source "CallForwardEditPreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallForwardEditPreference;->initCheckBoxKDDI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardEditPreference;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/phone/CallForwardEditPreference;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference$4;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iput-object p2, p0, Lcom/android/phone/CallForwardEditPreference$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "CallForwardEditPreference"

    const-string/jumbo v2, "mSelect_kddi group is selected"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$4;->val$view:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$4;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v1}, Lcom/android/phone/CallForwardEditPreference;->-get18(Lcom/android/phone/CallForwardEditPreference;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$4;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v3, v4}, Lcom/android/phone/CallForwardEditPreference;->setEnableCFPhoneNumber(ZZ)V

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$4;->this$0:Lcom/android/phone/CallForwardEditPreference;

    sget-object v2, Lcom/android/phone/CallForwardEditPreference;->VOICE_MAIL_NUMBER_LOCAL_KDDI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallForwardEditPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$4;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v1}, Lcom/android/phone/CallForwardEditPreference;->-get5(Lcom/android/phone/CallForwardEditPreference;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$4;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v4, v3}, Lcom/android/phone/CallForwardEditPreference;->setEnableCFPhoneNumber(ZZ)V

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$4;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$4;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v2}, Lcom/android/phone/CallForwardEditPreference;->-get9(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/CallForwardEditPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0
.end method
