.class public Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadFile;
.super Ljava/lang/Object;
.source "MultiPartUploadFile.java"


# instance fields
.field private chunk_count:I

.field private content_type:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:J

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setChunk_count(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadFile;->chunk_count:I

    return-void
.end method

.method public setContent_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadFile;->content_type:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadFile;->path:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadFile;->size:J

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadFile;->tag:Ljava/lang/String;

    return-void
.end method
