.class public Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;
.super Ljava/lang/Object;
.source "ChannelItemOwnerInfo.java"


# instance fields
.field private mOwnerName:Ljava/lang/String;

.field private mOwnerNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->mOwnerName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->mOwnerNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOwnerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->mOwnerName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->mOwnerNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setOwnerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->mOwnerName:Ljava/lang/String;

    return-void
.end method

.method public setOwnerNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->mOwnerNumber:Ljava/lang/String;

    return-void
.end method
