.class Lcom/android/phone/callsettings/SubNumberManager$2;
.super Ljava/lang/Object;
.source "SubNumberManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SubNumberManager;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SubNumberManager;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SubNumberManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    invoke-static {}, Lcom/android/phone/callsettings/SubNumberManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current mState in setOnItemClickListener = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get13(Lcom/android/phone/callsettings/SubNumberManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/callsettings/SubNumberManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-> setOnItemClickListener arg2= :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->-set5(Lcom/android/phone/callsettings/SubNumberManager;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get13(Lcom/android/phone/callsettings/SubNumberManager;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-wrap3(Lcom/android/phone/callsettings/SubNumberManager;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get13(Lcom/android/phone/callsettings/SubNumberManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0, p3}, Lcom/android/phone/callsettings/SubNumberManager;->-set7(Lcom/android/phone/callsettings/SubNumberManager;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->-set8(Lcom/android/phone/callsettings/SubNumberManager;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get19(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get12(Lcom/android/phone/callsettings/SubNumberManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/phone/callsettings/SubNumberManager;->-set10(Lcom/android/phone/callsettings/SubNumberManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get18(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get12(Lcom/android/phone/callsettings/SubNumberManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/phone/callsettings/SubNumberManager;->-set9(Lcom/android/phone/callsettings/SubNumberManager;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/callsettings/SubNumberManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get12(Lcom/android/phone/callsettings/SubNumberManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/callsettings/SubNumberManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTempPrefixEditString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get17(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; mTempPhoneEditString"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get16(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->-set11(Lcom/android/phone/callsettings/SubNumberManager;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$2;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SubNumberManager;->goToEditSubNumberScreen()V

    goto/16 :goto_0
.end method
