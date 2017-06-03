.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$EGender;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EGender"
.end annotation


# static fields
.field public static final F:B = 0x1t

.field public static final M:B = 0x0t

.field public static final N:B = 0x2t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "M"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "F"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "N"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$EGender;->names:[Ljava/lang/String;

    return-void
.end method
