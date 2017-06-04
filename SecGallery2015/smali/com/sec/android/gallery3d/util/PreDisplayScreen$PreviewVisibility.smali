.class final enum Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;
.super Ljava/lang/Enum;
.source "PreDisplayScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/util/PreDisplayScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PreviewVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

.field public static final enum ACTIVE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

.field public static final enum DONE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

.field public static final enum FAILED:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

.field public static final enum IDLE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->IDLE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    new-instance v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    const-string/jumbo v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->ACTIVE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    new-instance v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    const-string/jumbo v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->DONE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    new-instance v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->FAILED:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    sget-object v1, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->IDLE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->ACTIVE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->DONE:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->FAILED:Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->$VALUES:[Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->$VALUES:[Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/util/PreDisplayScreen$PreviewVisibility;

    return-object v0
.end method
