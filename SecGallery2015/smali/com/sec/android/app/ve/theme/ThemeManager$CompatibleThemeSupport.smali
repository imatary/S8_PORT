.class public Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/theme/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompatibleThemeSupport"
.end annotation


# instance fields
.field private final mBkCompatibleThemeList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/ve/theme/Theme;",
            ">;"
        }
    .end annotation
.end field

.field private final mThemeList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/ve/theme/Theme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->mThemeList:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->mBkCompatibleThemeList:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public addTheme(Lcom/sec/android/app/ve/theme/Theme;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->mThemeList:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/ve/theme/Theme;->getThemeID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCompatibleTheme(I)Lcom/sec/android/app/ve/theme/Theme;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->mThemeList:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/theme/Theme;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->mBkCompatibleThemeList:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/theme/Theme;

    :cond_0
    return-object v0
.end method

.method public isThemeAdded(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->mThemeList:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
