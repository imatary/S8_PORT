.class public final enum Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;
.super Ljava/lang/Enum;
.source "UriBitmapSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/wallpapercropper2/UriBitmapSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

.field public static final enum ERROR_LOADING:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

.field public static final enum LOADED:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

.field public static final enum NOT_LOADED:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    const-string/jumbo v1, "NOT_LOADED"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->NOT_LOADED:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    new-instance v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    const-string/jumbo v1, "LOADED"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->LOADED:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    new-instance v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    const-string/jumbo v1, "ERROR_LOADING"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->ERROR_LOADING:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    sget-object v1, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->NOT_LOADED:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->LOADED:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->ERROR_LOADING:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->$VALUES:[Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;
    .locals 1

    const-class v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;
    .locals 1

    sget-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->$VALUES:[Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    return-object v0
.end method
