.class public final Landroid/system/NetlinkSocketAddress;
.super Ljava/net/SocketAddress;
.source "NetlinkSocketAddress.java"


# instance fields
.field private final nlGroupsMask:I

.field private final nlPortId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    iput p1, p0, Landroid/system/NetlinkSocketAddress;->nlPortId:I

    iput p2, p0, Landroid/system/NetlinkSocketAddress;->nlGroupsMask:I

    return-void
.end method


# virtual methods
.method public getGroupsMask()I
    .locals 1

    iget v0, p0, Landroid/system/NetlinkSocketAddress;->nlGroupsMask:I

    return v0
.end method

.method public getPortId()I
    .locals 1

    iget v0, p0, Landroid/system/NetlinkSocketAddress;->nlPortId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
