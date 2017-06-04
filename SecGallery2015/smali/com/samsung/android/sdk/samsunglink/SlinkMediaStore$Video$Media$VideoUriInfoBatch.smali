.class public Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfoBatch;
.super Ljava/lang/Object;
.source "SlinkMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoUriInfoBatch"
.end annotation


# instance fields
.field private final mHttpProxyUris:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;

.field private final mLocalUris:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;

.field private final mSameAccessPointUris:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;

.field private final mScsUris:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfoBatch;->mHttpProxyUris:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;

    iput-object p2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfoBatch;->mSameAccessPointUris:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;

    iput-object p3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfoBatch;->mScsUris:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;

    iput-object p4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfoBatch;->mLocalUris:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfoBatch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfoBatch;-><init>(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;)V

    return-void
.end method


# virtual methods
.method public getHttpProxyUris()Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfoBatch;->mHttpProxyUris:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;

    return-object v0
.end method

.method public getLocalUris()Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfoBatch;->mLocalUris:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;

    return-object v0
.end method

.method public getSameAccessPointUris()Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfoBatch;->mSameAccessPointUris:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;

    return-object v0
.end method

.method public getScsUris()Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfoBatch;->mScsUris:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Media$VideoUriInfo;

    return-object v0
.end method
