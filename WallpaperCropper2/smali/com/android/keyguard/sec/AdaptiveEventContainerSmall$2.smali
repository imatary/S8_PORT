.class Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;
.super Landroid/database/ContentObserver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 13

    const v12, -0xbbbbbc

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    const-string/jumbo v0, "AdaptiveEventContainerSmall"

    const-string/jumbo v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-eqz p2, :cond_1

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$1700(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$400(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "white_lockscreen_wallpaper"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v8, :cond_4

    move v0, v7

    :goto_1
    # setter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z
    invoke-static {v1, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$302(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_city_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$id;->adaptive_weather_small_temp:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$id;->adaptive_weather_small_unit:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;
    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$id;->adaptive_weather_city_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;
    invoke-static {v4}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$id;->adaptive_weather_latte_high_temp:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;
    invoke-static {v5}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$id;->adaptive_weather_latte_low_temp:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;
    invoke-static {v6}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;

    move-result-object v6

    sget v9, Lcom/android/keyguard/R$id;->adaptive_weather_life_dust:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$600(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z
    invoke-static {v10}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$300(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v8, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$1200(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1, v9, v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$1300(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v9, v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    if-nez v4, :cond_9

    :cond_3
    :goto_2
    if-nez v6, :cond_a

    :goto_3
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0

    :cond_4
    move v0, v8

    goto/16 :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$700(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v9, v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$800(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v9, v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    if-nez v4, :cond_7

    :cond_6
    :goto_4
    if-nez v6, :cond_8

    :goto_5
    if-nez v9, :cond_0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v12, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v12, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$900(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v9, v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$1000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v9, v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$1100(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v9, v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    goto :goto_5

    :cond_9
    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$1400(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v9, v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$1500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v9, v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$1600(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v9, v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    goto :goto_3
.end method
