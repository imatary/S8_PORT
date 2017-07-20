.class Lcom/android/phone/CLIRDropDownPreference$1;
.super Ljava/lang/Object;
.source "CLIRDropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CLIRDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CLIRDropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/CLIRDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v0}, Lcom/android/phone/CLIRDropDownPreference;->-get4(Lcom/android/phone/CLIRDropDownPreference;)I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "CLIRDropDownPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOnItemSelectedListener prev_CLIR_value1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/CLIRDropDownPreference;->-get7()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", val : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v0}, Lcom/android/phone/CLIRDropDownPreference;->-get2(Lcom/android/phone/CLIRDropDownPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CLIRDropDownPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CLIRDropDownPreference mInitDropDown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v2}, Lcom/android/phone/CLIRDropDownPreference;->-get2(Lcom/android/phone/CLIRDropDownPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v0, v4}, Lcom/android/phone/CLIRDropDownPreference;->-set0(Lcom/android/phone/CLIRDropDownPreference;Z)Z

    invoke-static {}, Lcom/android/phone/CLIRDropDownPreference;->-get7()I

    move-result v0

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {}, Lcom/android/phone/CLIRDropDownPreference;->-get7()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CLIRDropDownPreference;->setSelectedItem(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/CLIRDropDownPreference;->-get7()I

    move-result v0

    if-eq v0, p3, :cond_0

    invoke-static {p3}, Lcom/android/phone/utils/SALogging;->sendCLIRLog(I)V

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v0}, Lcom/android/phone/CLIRDropDownPreference;->-get3(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v1}, Lcom/android/phone/CLIRDropDownPreference;->-get1(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/CLIRDropDownPreference$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v0}, Lcom/android/phone/CLIRDropDownPreference;->-get6(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v0}, Lcom/android/phone/CLIRDropDownPreference;->-get6(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-interface {v0, v1, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v0}, Lcom/android/phone/CLIRDropDownPreference;->-get4(Lcom/android/phone/CLIRDropDownPreference;)I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "CLIRDropDownPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOnItemSelectedListener prev_CLIR_value2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/CLIRDropDownPreference;->-get8()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", val : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v0}, Lcom/android/phone/CLIRDropDownPreference;->-get2(Lcom/android/phone/CLIRDropDownPreference;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "CLIRDropDownPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CLIRDropDownPreference mInitDropDown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v2}, Lcom/android/phone/CLIRDropDownPreference;->-get2(Lcom/android/phone/CLIRDropDownPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v0, v4}, Lcom/android/phone/CLIRDropDownPreference;->-set0(Lcom/android/phone/CLIRDropDownPreference;Z)Z

    invoke-static {}, Lcom/android/phone/CLIRDropDownPreference;->-get8()I

    move-result v0

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {}, Lcom/android/phone/CLIRDropDownPreference;->-get8()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CLIRDropDownPreference;->setSelectedItem(I)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/CLIRDropDownPreference;->-get8()I

    move-result v0

    if-eq v0, p3, :cond_0

    invoke-static {p3}, Lcom/android/phone/utils/SALogging;->sendCLIRLog(I)V

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v0}, Lcom/android/phone/CLIRDropDownPreference;->-get3(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v1}, Lcom/android/phone/CLIRDropDownPreference;->-get1(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/CLIRDropDownPreference$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/phone/CLIRDropDownPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v0}, Lcom/android/phone/CLIRDropDownPreference;->-get6(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v0}, Lcom/android/phone/CLIRDropDownPreference;->-get6(Lcom/android/phone/CLIRDropDownPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CLIRDropDownPreference$1;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-interface {v0, v1, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto/16 :goto_0
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
