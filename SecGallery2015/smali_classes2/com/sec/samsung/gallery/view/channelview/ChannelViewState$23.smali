.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$23;
.super Ljava/lang/Object;
.source "ChannelViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComparatorName;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkNameAfterDeleteSpace(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$23;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->compareStoryName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
