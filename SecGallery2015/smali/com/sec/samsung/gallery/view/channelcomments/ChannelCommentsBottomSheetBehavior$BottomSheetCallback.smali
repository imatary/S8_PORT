.class public abstract Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;
.super Ljava/lang/Object;
.source "ChannelCommentsBottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BottomSheetCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onStateChanged(I)V
    .param p1    # I
        .annotation build Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$State;
        .end annotation
    .end param
.end method
