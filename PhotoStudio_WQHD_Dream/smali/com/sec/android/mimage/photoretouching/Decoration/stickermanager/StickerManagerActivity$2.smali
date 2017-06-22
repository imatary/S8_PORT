.class Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$2;
.super Ljava/lang/Object;
.source "StickerManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    const/16 v0, 0x17

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerCancel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerCancel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerCancel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->cancel()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
