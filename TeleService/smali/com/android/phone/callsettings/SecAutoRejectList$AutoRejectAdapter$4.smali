.class Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->-wrap1(Lcom/android/phone/callsettings/SecAutoRejectList;I)V

    const-string/jumbo v2, "call_block_number_formatter"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v2, v1, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->-wrap6(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;Z)V

    :goto_0
    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get5()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget v4, v4, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->matched:I

    invoke-static {v2, v3, v4}, Lcom/android/phone/PhoneUtilsCommon;->deleteMessageBlockNumber(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    const v4, 0x7f0d0596

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->-wrap2(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->matched:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->deleteNativeBlockNumber(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->-wrap0(Lcom/android/phone/callsettings/SecAutoRejectList;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    const v3, 0x7f0d024f

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    const v4, 0x7f0d027a

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->-wrap5(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    const-string/jumbo v2, "support_bixby"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->sendSuccessResponseIfIAExecuting()V

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->-wrap6(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    const v4, 0x7f0d0598

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->-wrap2(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;)V

    goto :goto_1
.end method
