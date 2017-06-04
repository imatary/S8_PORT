.class Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$PackageManager;
.super Ljava/lang/Object;
.source "SDualScreenConstantsReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageManager"
.end annotation


# static fields
.field public static FEATURE_DUALSCREEN:Ljava/lang/String;

.field static FIELD_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "FEATURE_DUALSCREEN"

    aput-object v7, v5, v6

    sput-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    # getter for: Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Reflecting..... <PackageManager> class"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    :try_start_0
    const-class v5, Landroid/content/pm/PackageManager;

    sget-object v6, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const-class v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$PackageManager;

    sget-object v6, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v4, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
