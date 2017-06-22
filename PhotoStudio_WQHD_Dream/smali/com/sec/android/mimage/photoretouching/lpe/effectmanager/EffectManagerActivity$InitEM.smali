.class Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;
.super Landroid/os/AsyncTask;
.source "EffectManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitEM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$InitEM;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->isIntitializing:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1102(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Z)Z

    return-void
.end method
