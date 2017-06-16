.class Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EffectManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocaleChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->BASE_URI_FILTERS:Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1300()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mFilterDBObserverForLanguage:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGPUFilterSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->cancel(Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    invoke-static {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    invoke-direct {v1, v2, v5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$1;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
