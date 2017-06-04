.class abstract Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChannelAbsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$AbsViewHolder;,
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$StaticHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final MSG_UPDATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ChannelAbsAdapter"


# instance fields
.field final mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

.field mDataLoadListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;

.field mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

.field mUpdateHandler:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$StaticHandler;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    return-void
.end method


# virtual methods
.method isMyProfile(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onPause()V
    .locals 0

    return-void
.end method

.method onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;->load()V

    return-void
.end method
