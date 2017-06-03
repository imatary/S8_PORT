.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EDecimalHandling"
.end annotation


# static fields
.field public static final DPAUCAL:B = 0x3t

.field public static final DPLURAL:B = 0x0t

.field public static final DSINGULAR:B = 0x1t

.field public static final DSINGULAR_SUBONE:B = 0x2t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DPLURAL"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "DSINGULAR"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "DSINGULAR_SUBONE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "DPAUCAL"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;->names:[Ljava/lang/String;

    return-void
.end method
