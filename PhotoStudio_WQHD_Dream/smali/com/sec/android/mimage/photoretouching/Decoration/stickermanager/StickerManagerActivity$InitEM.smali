.class Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;
.super Landroid/os/AsyncTask;
.source "StickerManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;
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
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->isIntitializing:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->access$602(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;Z)Z

    return-void
.end method
