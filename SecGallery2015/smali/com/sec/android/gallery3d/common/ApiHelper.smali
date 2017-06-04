.class public Lcom/sec/android/gallery3d/common/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/common/ApiHelper$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final HAS_GLES20_REQUIRED:Z = false

.field public static final HAS_INTENT_EXTRA_LOCAL_ONLY:Z

.field public static final HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z = true

.field public static final HAS_OPTIONS_IN_MUTABLE:Z

.field public static final HAS_POST_ON_ANIMATION:Z

.field public static final HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

.field public static final HAS_SET_SYSTEM_UI_VISIBILITY:Z = true

.field public static final HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z = true

.field public static final USE_888_PIXEL_FORMAT:Z

.field public static final USE_SDL_FOR_AUTO_ADJUST:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xb

    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/gallery3d/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/sec/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/sec/android/gallery3d/common/ApiHelper;->HAS_INTENT_EXTRA_LOCAL_ONLY:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/sec/android/gallery3d/common/ApiHelper;->HAS_OPTIONS_IN_MUTABLE:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/sec/android/gallery3d/common/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_5

    :goto_5
    sput-boolean v1, Lcom/sec/android/gallery3d/common/ApiHelper;->USE_SDL_FOR_AUTO_ADJUST:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasField(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static varargs hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static varargs hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    goto :goto_0
.end method
