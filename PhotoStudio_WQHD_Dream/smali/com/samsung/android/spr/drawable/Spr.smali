.class public Lcom/samsung/android/spr/drawable/Spr;
.super Ljava/lang/Object;
.source "Spr.java"


# static fields
.field private static mDensity:F

.field private static mDrawableCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/spr/drawable/SprDrawableCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/samsung/android/spr/drawable/Spr;->mDensity:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_1
    if-eq v1, v3, :cond_2

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/spr/drawable/Spr;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bitmap"

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    const-string v4, "http://schemas.android.com/apk/res/android"

    const-string v5, "src"

    const/4 v6, 0x0

    invoke-interface {p2, v4, v5, v6}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lcom/samsung/android/spr/drawable/Spr;->isSpr(Landroid/content/res/Resources;I)Z

    move-result v2

    :cond_0
    if-eqz v2, :cond_1

    new-instance v0, Lcom/samsung/android/spr/drawable/SprDrawable;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/SprDrawable;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    :cond_1
    return-object v0
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    sget-object v7, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    monitor-enter v7

    :try_start_0
    sget v6, Lcom/samsung/android/spr/drawable/Spr;->mDensity:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_0

    sput v2, Lcom/samsung/android/spr/drawable/Spr;->mDensity:F

    sget-object v6, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    sput-object v6, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v5, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v6, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    monitor-enter v7

    :try_start_1
    sget-object v6, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/SprDrawableCache;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/spr/drawable/SprDrawableCache;

    invoke-direct {v0, p0}, Lcom/samsung/android/spr/drawable/SprDrawableCache;-><init>(Landroid/content/res/Resources;)V

    sget-object v6, Lcom/samsung/android/spr/drawable/Spr;->mDrawableCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawableCache;->getInstance(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v1

    :goto_0
    return-object v6

    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_2
    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".bmp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ".spr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/spr/drawable/Spr;->isSpr(Landroid/content/res/Resources;I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromResourceStream(Landroid/content/res/Resources;I)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v0, p1, v6}, Lcom/samsung/android/spr/drawable/SprDrawableCache;->put(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    monitor-exit v7

    move-object v6, v1

    goto :goto_0

    :cond_5
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0
.end method

.method public static isSpr(Landroid/content/res/Resources;I)Z
    .locals 7

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    new-array v0, v5, [B

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v1, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-byte v5, v0, v4

    const/16 v6, 0x53

    if-ne v5, v6, :cond_1

    aget-byte v5, v0, v3

    const/16 v6, 0x50

    if-ne v5, v6, :cond_1

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/16 v6, 0x52

    if-ne v5, v6, :cond_1

    move v2, v3

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0
.end method
