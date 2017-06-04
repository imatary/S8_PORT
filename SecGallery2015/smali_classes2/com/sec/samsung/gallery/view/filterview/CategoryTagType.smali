.class public Lcom/sec/samsung/gallery/view/filterview/CategoryTagType;
.super Ljava/lang/Object;
.source "CategoryTagType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;
    }
.end annotation


# static fields
.field private static final CATEGORY_TYPE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrenCategoryType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType;->CATEGORY_TYPE:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType;->mCurrenCategoryType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentCategoryType()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType;->mCurrenCategoryType:I

    return v0
.end method

.method public static setCurrentCategoryType(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 4

    const/4 v2, -0x1

    sput v2, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType;->mCurrenCategoryType:I

    sget-object v2, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType;->CATEGORY_TYPE:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->ordinal()I

    move-result v2

    sput v2, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType;->mCurrenCategoryType:I

    :cond_1
    return-void
.end method
