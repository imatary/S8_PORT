.class public final enum Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;
.super Ljava/lang/Enum;
.source "MediaViewerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "From"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

.field public static final enum ALL_MEDIA:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

.field public static final enum ARTICLE:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

.field public static final enum BANNER:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

.field public static final enum PROFILE:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    const-string/jumbo v1, "ARTICLE"

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->ARTICLE:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    const-string/jumbo v1, "PROFILE"

    invoke-direct {v0, v1, v3}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->PROFILE:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    const-string/jumbo v1, "ALL_MEDIA"

    invoke-direct {v0, v1, v4}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->ALL_MEDIA:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    const-string/jumbo v1, "BANNER"

    invoke-direct {v0, v1, v5}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->BANNER:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->ARTICLE:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->PROFILE:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->ALL_MEDIA:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->BANNER:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    aput-object v1, v0, v5

    sput-object v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->$VALUES:[Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

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

.method public static valueOf(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    return-object v0
.end method

.method public static values()[Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->$VALUES:[Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    invoke-virtual {v0}, [Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    return-object v0
.end method
