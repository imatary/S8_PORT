.class public Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "VideoUploadRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoChunkUploadResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse$Data;
    }
.end annotation


# instance fields
.field public data:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse$Data;

.field public key:Ljava/lang/String;

.field public resultCode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    return-void
.end method
