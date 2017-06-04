.class public Lcom/sec/samsung/gallery/access/face/FaceData$FileColumns;
.super Lcom/sec/samsung/gallery/access/face/FaceData$BaseColumns;
.source "FaceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/access/face/FaceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileColumns"
.end annotation


# static fields
.field public static final FACE_COUNT:Ljava/lang/String; = "face_count"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/access/face/FaceData$BaseColumns;-><init>()V

    return-void
.end method
