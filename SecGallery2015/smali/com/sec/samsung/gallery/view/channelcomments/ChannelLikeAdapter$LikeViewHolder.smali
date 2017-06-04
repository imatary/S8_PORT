.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter$LikeViewHolder;
.super Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;
.source "ChannelLikeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LikeViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter$LikeViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method bind(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter$LikeViewHolder;->setContactImageAndName(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V

    return-void
.end method
