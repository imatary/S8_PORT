.class Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;
.super Landroid/os/AsyncTask;
.source "HelpPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpPopupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 6

    const/4 v4, 0x0

    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->setPopupType(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->initView()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowRedEyePopup:Z
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$802(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Z)Z

    const-string v3, "showEye"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-wide/16 v4, 0x96

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v3, 0x0

    return-object v3

    :cond_1
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowLongPressPopup:Z
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$902(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Z)Z

    const-string v3, "showLongPress"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mShowBeforeViewPopup:Z
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$1002(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Z)Z

    const-string v3, "beforeView"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->initView2()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->showPopup()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;->dismiss()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$602(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;)Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Landroid/content/Context;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->mHelpPopupDialog:Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;->access$602(Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup;Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;)Lcom/sec/android/mimage/photoretouching/lpe/util/HelpPopup$HelpPopupDialog;

    :cond_0
    return-void
.end method
