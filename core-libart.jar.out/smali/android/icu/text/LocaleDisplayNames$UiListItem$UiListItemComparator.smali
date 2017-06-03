.class Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;
.super Ljava/lang/Object;
.source "LocaleDisplayNames.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/LocaleDisplayNames$UiListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiListItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final useSelf:Z


# direct methods
.method constructor <init>(Ljava/util/Comparator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    iput-boolean p2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->useSelf:Z

    return-void
.end method


# virtual methods
.method public compare(Landroid/icu/text/LocaleDisplayNames$UiListItem;Landroid/icu/text/LocaleDisplayNames$UiListItem;)I
    .locals 4

    iget-boolean v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->useSelf:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    iget-object v2, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    iget-object v3, p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    iget-object v2, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    iget-object v3, p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    iget-object v2, p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v2}, Landroid/icu/util/ULocale;->compareTo(Landroid/icu/util/ULocale;)I

    move-result v0

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    check-cast p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->compare(Landroid/icu/text/LocaleDisplayNames$UiListItem;Landroid/icu/text/LocaleDisplayNames$UiListItem;)I

    move-result v0

    return v0
.end method
