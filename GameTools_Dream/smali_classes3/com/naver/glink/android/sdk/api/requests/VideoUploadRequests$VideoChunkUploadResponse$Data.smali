.class public Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse$Data;
.super Ljava/lang/Object;
.source "VideoUploadRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field public chunkNum:Ljava/lang/String;

.field public chunkSize:Ljava/lang/String;

.field final synthetic this$0:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse$Data;->this$0:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
