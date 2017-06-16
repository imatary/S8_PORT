.class Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM$1;
.super Ljava/lang/Object;
.source "StickerManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->initialize()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->access$500(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM$1;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->isIntitializing:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->access$602(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;Z)Z

    return-void
.end method
