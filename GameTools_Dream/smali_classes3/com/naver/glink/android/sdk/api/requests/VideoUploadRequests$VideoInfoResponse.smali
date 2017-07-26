.class public Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "VideoUploadRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoInfoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;
    }
.end annotation


# instance fields
.field public data:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse$Data;

.field public resultCode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    return-void
.end method
