.class Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

.field final synthetic val$item:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$item:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->-get21(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$item:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->-wrap5(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/callsettings/IpCall;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current item is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$item:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$item:Ljava/lang/String;

    const-string/jumbo v1, "17951"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$item:Ljava/lang/String;

    const-string/jumbo v1, "17911"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$item:Ljava/lang/String;

    const-string/jumbo v1, "17901"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v2, "IPCL"

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$item:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->-get14(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const v1, 0x7f0d063d

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$item:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v2, "IPCL"

    const-string/jumbo v3, "Auto"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v2, "IPCL"

    const-string/jumbo v3, "Others"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
