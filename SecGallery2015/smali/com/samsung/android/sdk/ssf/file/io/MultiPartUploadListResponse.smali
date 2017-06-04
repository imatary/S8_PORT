.class public Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadListResponse;
.super Ljava/lang/Object;
.source "MultiPartUploadListResponse.java"


# instance fields
.field public resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadListResponse;->resultList:Ljava/util/ArrayList;

    return-void
.end method
