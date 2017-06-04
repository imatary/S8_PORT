.class public final Lcom/sec/samsung/gallery/access/face/FaceData$PersonColumns;
.super Lcom/sec/samsung/gallery/access/face/FaceData$BaseColumns;
.source "FaceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/access/face/FaceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PersonColumns"
.end annotation


# static fields
.field static final COVER:Ljava/lang/String; = "cover"

.field public static final NAME:Ljava/lang/String; = "name"

.field static final USER_DATA:Ljava/lang/String; = "user_data"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/access/face/FaceData$BaseColumns;-><init>()V

    return-void
.end method
