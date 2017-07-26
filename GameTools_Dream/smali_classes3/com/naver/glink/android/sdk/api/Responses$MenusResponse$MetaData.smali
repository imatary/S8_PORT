.class public Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaData"
.end annotation


# instance fields
.field public allPhotos:Ljava/lang/String;

.field public allPosts:Ljava/lang/String;

.field public allVideos:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    return-void
.end method
