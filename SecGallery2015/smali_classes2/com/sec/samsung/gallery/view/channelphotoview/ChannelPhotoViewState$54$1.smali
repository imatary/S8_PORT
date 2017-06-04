.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54$1;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54;

.field tvDescriptionTop:I

.field tvNoItemBottom:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    const v2, 0x7f120177

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f120176

    if-ne v0, v1, :cond_0

    iput p5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54$1;->tvNoItemBottom:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v2, :cond_1

    iput p3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54$1;->tvDescriptionTop:I

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54$1;->tvDescriptionTop:I

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54$1;->tvNoItemBottom:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNoItemView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$23200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNoItemView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$23200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
