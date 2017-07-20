.class Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;
.super Ljava/lang/Object;
.source "SecRejectCallWithMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-get3(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v2, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-wrap1(Lcom/android/phone/callsettings/SecRejectCallWithMsg;I)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->-get0(Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-get3(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-wrap4(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-wrap3(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    const v3, 0x7f0d01f3

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter$2;->this$1:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    const v4, 0x7f0d021c

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const-string/jumbo v2, "support_bixby"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->sendSuccessResponseIfIAExecuting()V

    :cond_1
    return-void
.end method
