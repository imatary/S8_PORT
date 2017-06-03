.class Landroid/icu/impl/ICUResourceBundleImpl;
.super Landroid/icu/impl/ICUResourceBundle;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundle;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundle;-><init>(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    invoke-static {p2}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The resource type is unknown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object v0

    :pswitch_2
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object v0

    :pswitch_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/icu/impl/ICUResourceBundleImpl;->getAliasedResource(Landroid/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object v0

    :pswitch_5
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object v0

    :pswitch_6
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object v0

    :pswitch_7
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
