import 'package:cached_network_image/cached_network_image.dart';
import 'package:finance_app3/bottom_bar.dart';
import 'package:finance_app3/model/news_item.dart';
import 'package:finance_app3/pages/news/current_news_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsItem> newsList = [
    NewsItem(
      title:
          'Soaring debt and deficits causing worry about threats to the economy and markets',
      text:
          'Government debt that has swelled nearly 50% since the early days of the Covid pandemic is generating elevated levels of worry both on Wall Street and in Washington. The federal IOU is now at \$34.5 trillion, or about \$11 trillion higher than where it stood in March 2020. As a portion of the total U.S. economy, it is now more than 120%. Concern over such eye-popping numbers had been largely confined to partisan rancor on Capitol Hill as well as from watchdogs like the Committee for a Responsible Federal Budget. However, in recent days the chatter has spilled over into government and finance heavyweights, and even has one prominent Wall Street firm wondering if costs associated with the debt pose a significant risk to the stock market rally. “We’re running big structural deficits, and we’re going to have to deal with this sooner or later, and sooner is a lot more attractive than later,” Fed Chair Jerome Powell said in remarks Tuesday to an audience of bankers in Amsterdam. While he has assiduously avoided commenting on such matters, Powell encouraged the audience to read the recent Congressional Budget Office reports on the nation’s fiscal condition. “Everyone should be reading the things that they’re publishing about the U.S. budget deficit and should be very concerned that this is something that elected people need to get their arms around sooner rather than later,” he said. Indeed, the CBO numbers are ominous, as they outline the likely path of debt and deficits. The watchdog agency estimates that debt held by the public, which currently totals \$27.4 trillion and excludes intragovernmental obligations, will rise from the current 99% of GDP to 116% over the next decade. That would be “an amount greater than at any point in the nation’s history,” the CBO said in its most recent update.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107413215-17153409552024-05-10t013313z_1296059175_rc25n7a88gt2_rtrmadp_0_usa-congress.jpeg?v=1715341009&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Some consumers are punting big purchases like pools and mattresses',
      text:
          'Americans are kicking the can down the road on some more-costly, traditionally financed purchases as elevated inflation and interest rates bite. Corporate executives this earnings season have lamented that customers are disinterested in shelling out on big-ticket items for their bedrooms, backyards and everywhere in between. It comes at a pivotal moment for the national economy: the average Joe has been contending with a double-whammy of high prices and borrowing costs, while economists and policymakers are trying to gauge the impact this has made. This matters because it adds to a growing picture of consumer spending finally slowing down, as experts long anticipated. That means the Federal Reserve may get the sign it’s been waiting for that interest rate hikes have had their intended effects of tightening the economy, which could be good news for investors and consumers. “The consumer’s purchasing power is limited,” Sleep Number CEO Shelly Ibach told analysts late last month. “As a result, consumers continue to scrutinize their spending and make near-term decisions based primarily on need, price and perceived value. And they are deferring higher-ticket, durable purchases.” Ibach said the mattress industry is in a “historic recession,” with sales likely to continue to decline after two already tough years. The Minneapolis-based company lost more per share and recorded lower revenue than analysts polled by FactSet had anticipated in the first quarter. Sleep Number isn’t alone. Executives across the consumer arena have been preparing for — and, in some cases, seeing — a slowdown over the last several months. Data from Prosper Insights & Analytics, a partner of the National Retail Federation, shows American adults have been increasingly delaying spending in areas like home improvement and electronics compared with before the pandemic. “Consumers are still spending, but the sense that we get now is that they’re being a little bit more careful,” said Mark Mathews, the NRF’s executive director of research. “They’re making important choices in terms of how they spend. They’re very, very price sensitive, and, definitely, we are back into a situation where consumers are all about the deal.”',
      image:
          'https://image.cnbcfm.com/api/v1/image/106874118-16194746292021-04-26t214122z_2081061450_rc2x3n9y5y83_rtrmadp_0_health-coronavirus-usa-pools.jpeg?v=1619474696&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'CPI report shows inflation easing in April, with consumer prices still rising 3.4% from a year ago',
      text:
          'Inflation eased slightly in April, providing at least a bit of relief for consumers while still holding above levels that would suggest a cut in interest rates is imminent. The consumer price index, a broad measure of how much goods and services cost at the cash register, increased 0.3% from March, the Labor Department’s Bureau of Labor Statistics reported Wednesday. That was slightly below the Dow Jones estimate for 0.4%. On a 12-month basis, however, the CPI increased 3.4%, in line with expectations. Excluding food and energy, the key core inflation reading came in at 0.3% monthly and 3.6% on an annual basis, both as forecast. The core 12-month inflation reading was the lowest since April 2021 while the monthly increase was the smallest since December. Markets reacted positively after the CPI release, with futures tied to major stock indexes rallying and Treasury yields tumbling. Futures traders raised the implied probability that the Federal Reserve would start cutting interest rates in September. “This is the first print in a month that wasn’t hotter than expected, so there’s a relief rally,” said Dan North, senior economist at Allianz Trade North America. “The excitement is a little overdone. This is not Caitlin Clark. She’s exciting, this is not exciting.” In other economic news Wednesday, the Commerce Department reported that retail sales were flat on the month, compared with the estimate for a 0.4% increase. That figure is adjusted for seasonality but not inflation, suggesting consumers did not keep up with the pace of price increases. For the inflation report, price gains on the month were driven heavily by rises in both shelter and energy. Shelter costs, which have been a particular trouble spot for Federal Reserve officials expecting inflation to come down this year, increased 0.4% for the month and were up 5.5% from a year ago. Both are levels uncomfortably high for a Fed trying to drive overall inflation back down to 2%. The energy index rose 1.1% for a month and was up 2.6% on an annual basis. Food was flat and up 2.2%, respectively. Used and new vehicle prices, which had contributed to the early rise in inflation during the worst of the Covid pandemic, both declined, falling 1.4% and 0.4%, respectively.',
      image:
          'https://image.cnbcfm.com/api/v1/image/105093453-1715777193736-105093453-GettyImages-630449028.jpg?v=1715777202&w=600&h=300&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Here’s everything to expect from Wednesday’s key report on inflation',
      text:
          'Inflation trends may have gotten a little less dreary in April, though they are still likely to keep the Federal Reserve uncomfortable enough to stay on pause with interest rates. The consumer price index, a broad measure of the cost of goods and services in the marketplace, is expected to show another increase for the month, though the annual inflation rate is projected to come down slightly, according to Dow Jones consensus forecasts. Prices for all items are projected to show a 0.4% gain on the month, the same as in March, though the annual rate is expected to edge lower to 3.4%, compared to the 3.5% reading in the previous month. On the important core measure that excludes food and energy, the respective projections are 0.3%, lower than March’s 0.4% gain, and 3.6%, which is down from 3.8%. In remarks made Tuesday in Amsterdam, Fed Chair Jerome Powell expressed hope that inflation would decelerate through the year but acknowledged the slow progress and provided further direction that rates aren’t likely to move anytime soon. “I expect that inflation will move back down on a monthly basis to levels that were more like the lower readings we were having last year,” he told attendees at a banking conference. “I would say my confidence in that is not as high as it was, having seen these readings in the first three months of the year. So we’re just going to have to see where the inflation data fall out.” Keeping with the higher-than-expected readings in the first quarter, the producer price index rose 0.5% in April, nearly double the expectation to kick off the second quarter on a sour note. The index, a proxy for wholesale prices, accelerated 2.2% on an annual basis, the highest reading in a year.It also heightened the importance of Wednesday’s CPI release. The Labor Department’s Bureau of Labor Statistics will provide the data at 8:30 a.m. ET. “This will be the most important read of the month [excluding nonfarm payrolls] as inflation continues to defy expectations,” said Dan North, senior economist at Allianz Trade North America. Even if the report comes in around consensus expectations, it will be “inadequate progress for the Fed to consider a cut until September,” he added. Indeed, financial markets have given up hope on an accommodative Fed, reducing expectations from the start of the year of at least six rate cuts now down to two, with the first one unlikely to come before the September meeting. Stocks, though, have been resilient in the face of a tighter Fed, with the focus instead turning to solid corporate earnings and economic growth.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107414535-1715688449663-gettyimages-1938434609-AFP_34FZ2HU.jpeg?v=1715717231&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title: 'Wholesale prices rose 0.5% in April, more than expected',
      text:
          'Wholesale prices jumped more than expected in April, putting up another potential roadblock to interest rate cuts anytime soon. The producer price index, a gauge of prices received at the wholesale level, increased 0.5% for the month, higher than the 0.3% Dow Jones estimate, the Labor Department’s Bureau of Labor Statistics reported Tuesday. However, the March reading was revised from an initially reported 0.2% gain to a decline of 0.1%. Stripping out volatile food and energy prices, the core PPI also rose 0.5% compared with the 0.2% Dow Jones estimate. Excluding trade services from that core group showed a 0.4% increase on the month and 3.1% on a 12-month basis, the highest level since April 2023. On a year-over-year basis, wholesale inflation rose 2.2%, also the highest in a year. The core PPI inflation was at 2.4%, the biggest annual move since August 2023. Both numbers were in line with estimates from Reuters. Stock market futures were around breakeven following the data while Treasury yields were mixed. “Sticky inflation looked downright stuck this morning after a much hotter-than-expected inflation reading. But with last month’s numbers revised lower, this report may not have been as much of an upside shock as it first appeared to be,” said Chris Larkin, managing director of trading and investing for E-Trade from Morgan Stanley. Services prices boosted the wholesale inflation reading, rising 0.6% and accounting for about three-quarters of the headline gain, while the final demand goods index increased 0.4%. The services increase was the biggest monthly gain since July 2023, the BLS reported. Despite the seemingly hotter inflation reading, Federal Reserve Chair Jerome Powell called the report “actually quite mixed.” “The headline numbers were higher, but they were backward revisions,” Powell told a bankers group in Amsterdam. “We’re, of course, disassembling it taking it apart and looking at it.” Portfolio management helped drive the services costs, rising 3.9% on the month. Goods prices as measured by the PPI rose 0.4%, reversing a 0.2% decline, led by a 2% increase in the energy index, which included a 5.4% surge in gasoline prices. The final demand index for food fell 0.7%.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107414534-1715688447797-gettyimages-1499080806-_dsc5110.jpeg?v=1715688495&w=600&h=338&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Americans must pay higher taxes if they want to keep a high standard of living',
      text:
          'No matter who wins the presidential election in November, the U.S. government faces daunting fiscal challenges that will have to be met with higher taxes. The CBO projects the U.S. federal deficit will grow to 6% of GDP in 2033 from 5.6% this year. Debt held by the public will increase to 114% of GDP from 99% and continue rising. These projections assume 2% inflation and real GDP growth, interest rates falling significantly from current levels, non-defense discretionary and defense spending growing in line with inflation, and current policies and laws unchanged. The 2017 Tax Cut and Jobs Act (TCJA) simplified and cut individual income taxes and lowered business taxes — the combined average federal and state corporate rates at 26.5% is now just about in line with rates in Europe. The TCJA was passed under reconciliation rules, which required no negative budget deficit impacts beyond a 10-year window. Consequently, under current law, most of the individual tax cuts expire at the end of 2025 while most of the corporate tax reductions continue. President Joe Biden’s proposed budget would effectively repeal the benefits for families with incomes over \$400,000, raise taxes on the wealthy and boost the federal corporate rate to 28% from 21%. Most of Biden’s tax increases are unlikely without the Democrats winning control of Congress; the Senate electoral map is more favorable to Republicans this year. If former President Donald Trump is elected again, the TCJA will likely be extended. This would cost at least \$3.3 trillion through 2033 and would raise the debt held by the public to far more than the CBO forecast of 114% of GDP by 2033. Borrowing costs would soar. Last July, the Treasury announced a substantial increase in its borrowing requirements to rebuild cash balances after the budget ceiling standoff in Congress. That instigated a full percentage-point jump in the 10-year Treasury rate 0.06% to nearly 5% by late October.',
      image:
          'https://images.mktw.net/im-488481?width=1260&size=1.4988290398126465',
    ),
    NewsItem(
      title:
          'China is trying to end its ‘epic’ property crisis. The hard work is just beginning',
      text:
          'Hong Kong — Beijing has launched its most ambitious plan yet to rescue its property market, a development that investors have eagerly anticipated for months. But it’s far from certain that the measures will work. The package is centered around Beijing’s adoption of a policy that has already been tested in a major city — asking local governments to buy unsold homes from developers and convert them into social affordable housing. It also features a reduction in mortgage interest rates and downpayment ratios, and more importantly, 300 billion yuan (\$41.5 billion) in cheap central bank cash to fund state purchases of unsold properties. The announcement last week swiftly followed an April meeting of the Politburo, China’s top ruling body, indicating that stabilizing the property sector has become a top priority for Beijing as it tries to revive growth in the world’s second biggest economy. “The policymakers recognize the urgency to prevent an outright property crisis,” said Zhaopeng Xing, senior China strategist at ANZ Research. “The new rescue plan demonstrates the policymakers’ resolution to turn things around.” While the urgency is welcome, experts say the current package may be far too small in scale to be effective and could suffer problems with funding. According to Goldman Sachs, the total value of unsold homes, unfinished projects and unused land in China is about 30 trillion yuan (\$4.1 trillion). To reduce the supply of housing to levels last seen in 2018, the year the real estate boom peaked, may require more than 7 trillion yuan (\$967 billion) for all cities, the Goldman analysts wrote in a Monday research note. That’s more than 20 times the amount of funding announced by the People’s Bank of China (PBOC). Even though China’s economy expanded faster than expected at the start of this year, growth is being weighed down by the all-important real estate sector, which once accounted for as much as 30% of economic activity.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2153284308.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title:
          'What Biden’s tariffs on Chinese imports may mean for American jobs, the economy and inflation',
      text:
          'Countries have long imposed tariffs as a means of protecting and shoring up domestic industries. However, history and research have shown that the economic effects often fail to live up to the hype. On Tuesday, the Biden administration announced the latest iteration of American import taxes: a wave of new and heightened tariffs on Chinese exports across a slew of industries deemed strategic to national security. Economists expect that the newly announced \$18 billion in tariffs likely will have a minimal near-term impact on GDP, inflation and monetary policy — some equating it to a mere “rounding error.” However, on a broader level, the picture could be more complex. “The tariffs announced on China by the Biden administration foreshadow what is going to be a long, cold winter of economic conflict between the US and China,” economist Joe Brusuelas at RSM US told CNN. The latest tariffs build upon former President Donald Trump’s sweeping \$300 billion program in 2018 and 2019, which levied tariffs heavily against China and a variety of other trading partners and is still in effect. Trump has made campaign trail promises for even steeper tariffs if he were elected — not just for China but an across-the-board 10% tariff on all imports, which economists have said would not only result in significant job losses in the US but also stoke inflation. The latest tariffs, which would roll out some time between now and 2026, come amid a solid job market, robust economic growth and strong consumer spending — but also a continuing battle against decades-high inflation that is keeping interest rates higher. Biden’s tariff plan likely won’t move the needle for monetary policy, said Ryan Sweet, chief US economist at Oxford Economics. “The additional tariffs are essentially a rounding error for inflation and GDP, carrying no implications for monetary policy,” Sweet wrote in a note issued Monday, when reports first indicated that changes to the US tariff policy were forthcoming. “The Fed will not make a mountain out of a mole hill, so the tariffs will not provide additional ammunition to justify keeping interest rates high for longer.”',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2149219287.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title:
          'Mortgage companies could intensify the next recession, US officials warn',
      text:
          'US officials worry the next recession could be intensified by a cascading series of failures in the mortgage industry caused by crashing home prices, frozen financial markets and soaring delinquencies. The US Financial Stability Oversight Council, a SWAT team of financial regulators formed after the 2008 crisis, sounded the alarm on Friday about an increasingly influential corner of the industry that has largely escaped scrutiny: nonbank mortgage companies. Unlike traditional banks, nonbank mortgage companies are heavily exposed to swings in the mortgage market, depend on funding that can dry up during times of stress and don’t have stable deposits to rely on as a safety net. And, unlike banks, these companies are lightly regulated at the national level. FSOC warned that these unique vulnerabilities risk a domino effect in a future crisis where multiple mortgage companies fail, borrowers are locked out of the mortgage market and the federal government is left holding the bag. “Put simply, the vulnerabilities of nonbank mortgage companies can amplify shocks in the mortgage market and undermine financial stability,” Treasury Secretary Janet Yellen, who chairs FSOC, said in the report. Federal regulators are calling for states and Congress to take action to address the risks posed here, including creating an industry-funded backstop to ease turmoil caused when a mortgage company goes under. Despite the wonky term, nonbank mortgage companies have become vital players that make most home mortgages in the United States today. They include major brands such as Rocket Mortgage, PennyMac and Mr. Cooper. As of 2022, nonbank mortgage companies originated about two-thirds of US mortgages and owned the servicing rights on 54% of mortgage balances, according to FSOC. That’s up significantly from 2008. In fact, nonbank mortgage servicers hold the servicing rights on nearly \$6.3 trillion in unpaid balances on agency-backed mortgages — representing 70% of the total. Nonbank mortgage companies have “vulnerabilities” that could cause them to “amplify and transmit the effect of a shock to the mortgage market and broader financial system,” FSOC said.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2147876674-20240502124553582.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title: 'Debt — and delinquencies — are on the rise for Americans',
      text:
          'The economy has been resilient, the job market healthy and consumers keep spending, but more Americans are becoming financially overextended — especially on their credit cards. New data released Tuesday by the Federal Reserve Bank of New York showed that as household debt balances grew during the first quarter, delinquencies also marched higher. Notably, the percentage of credit card balances in serious delinquency (90 days or more late) climbed to its highest level since 2012. “In the first quarter of 2024, credit card and auto loan transition rates into serious delinquency continued to rise across all age groups,” Joelle Scally, regional economic principal within the Household and Public Policy Research Division at the New York Fed, said in a statement. “An increasing number of borrowers missed credit card payments, revealing worsening financial distress among some households.” Aggregate delinquency rates increased during the first quarter to 3.2% of outstanding debt in some stage of delinquency, the highest since the fourth quarter of 2020, according to the New York Fed’s latest Quarterly Report on Household Debt and Credit. The transitions into delinquency — especially serious delinquency — increased across all debt types, according to the report. Delinquencies fell to historic lows during the pandemic as consumers spent less during the health and safety lockdowns and were able to build up savings and pay off debt with those funds and economic stimulus payments. However, as supply chain and spending imbalances fueled domestic and global inflation — and subsequently a rise of interest rates — delinquencies have moved higher in recent years. While the delinquency transition rates remain below what was seen during the Great Recession, they’re running higher than what was seen pre-pandemic. Because of that, New York Fed researchers said they’re keeping a close watch on what this means for the well-being of Americans’ household finances and the overall economy. Overall household debt grew by 1.1% during the first quarter to \$17.69 trillion, according to data that is not adjusted for inflation. The quarterly increase was driven largely by mortgage balances. Credit card balances dipped (as they typically do post-holidays) by \$14 billion to \$1.12 trillion. However, when adjusting for inflation, balances have yet to surpass the levels seen in 2008.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-1310101654.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title: 'Consumers haven’t felt this bad about the economy since November',
      text:
          'Consumer sentiment plunged to the lowest level in six months as price increases reaccelerated, according to the latest University of Michigan survey of consumers, released Friday. Additionally, consumers are bracing for even higher price increases in the year ahead compared to readings from prior months, the survey found. The gauge, which is closely tracked by the Biden administration, plunged 13% from April’s 77.2% reading, to 67.4%. That’s the biggest one-month drop since mid-2021. Economists polled by FactSet were expecting consumer expectations to fall to just 76.9%. However, the latest reading is still better than last May, when inflation was running at 4%, versus the latest reading of 3.5%. Even though inflation is lower compared to a year ago, it’s been moving in the wrong direction recently, shifting expectations for a rate cut from the Federal Reserve to the back burner. Perhaps the most daunting piece of the report for the Fed was year-ahead inflation expectations rising to 3.5% from 3.2% in April, even further away from the central bank’s 2% target. Long-run inflation expectations also rose, to 3.1% from 3.0% in April. Since inflation expectations can effectively control the pace of price hikes, businesses take those expectations into account when pricing goods and services. Chicago Fed President Austan Goolsbee said Friday the jump in the data “bodes awful for progress on inflation.” But he said investors still believe the Fed when it says it will get inflation back down to 2%, while acknowledging “it doesn’t look good today,” at an event hosted by the Economic Club of Minnesota. “There isn’t, at this time, much evidence in my view that inflation is stalling out at 3%,” said Goolsbee, who isn’t voting on monetary policy decisions this year. The survey suggests that the recent optimism consumers had about the state of the economy is waning. Beyond inflation, they’re also concerned about higher rates of unemployment, Joanne Hsu, the university’s Surveys of Consumers director, said in a release. Bill Adams, chief economist at Comerica Bank, found the survey particularly troubling since, in his view, “there’s no single smoking gun explaining why consumers were more downbeat.”',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-1369821254.jpg?c=16x9&q=f_webp',
    ),
    NewsItem(
      title: 'US wholesale inflation just hit its highest rate in a year',
      text:
          'Americans already contending with persistent and stubbornly high inflation just got more unwelcome news on Tuesday: There are more price hikes likely coming down the pike. Wholesale inflation picked up in April to its highest rate in a year, according to Bureau of Labor Statistics data released Tuesday. The Producer Price Index, which measures the change in prices that manufacturers pay to suppliers, was 2.2% for the 12 months ended in April, according to Bureau of Labor Statistics data released Tuesday. That gain is higher than what was seen in March, which was downwardly revised from 2.1% to 1.8%. On a monthly basis, prices rose 0.5%, a faster pace than March’s 0.1% loss (also downwardly revised) and ran much hotter than what economists had anticipated. Economists were expecting a monthly gain of 0.3%, according to FactSet consensus estimates. “The concern here is that we now have a trend, an upward trend in producer prices, which can only be passed through to consumers and result in upward pressure on consumer price inflation over the coming months,” Kurt Rankin, senior economist for the PNC Financial Services Group, told CNN in an interview. And that means interest rates will stay higher for longer and could further delay the Federal Reserve’s plans for cuts on that front, he said. On Tuesday, Fed Chair Jerome Powell said readings like the April PPI provide more justification to keep rates elevated for a longer period of time. But it does not necessarily mean the central bank will need to raise interest rates, Powell said while speaking at a Foreign Bankers Association event alongside European Central Bank Governing Council member Klaas Knot. While higher energy costs (up 2% in April) helped to push goods prices higher, services inflation is what drove up the overall PPI last month. Nearly three-quarters of the April monthly gain was attributable to price hikes seen by producers of services, according to the report. Services providers saw a 0.6% increase in prices for the month, the fastest pace seen for that category since March 2022, Rankin noted. “Services has been the issue over the past year as consumers continue to spend money, and costs for services-oriented businesses is still stronger than goods inflation; but goods producer prices are now also rising after having fallen through most of 2023,” he said.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2148007797.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title: 'UK exits recession in ‘fragile’ recovery ahead of election',
      text:
          'The United Kingdom has come out of a short and shallow recession, giving Prime Minister Rishi Sunak a sorely needed boost ahead of an election expected later this year. Gross domestic product grew 0.6% in the first three months of the year compared with the previous quarter, data from the Office for National Statistics (ONS) showed Friday. The increase follows falls of 0.3% in the fourth quarter and 0.1% in the third quarter of last year. A recession is commonly defined as two consecutive quarters of economic contraction. The expansion early this year was driven by “widespread growth” in the dominant service sector, where output ticked up 0.7% during the quarter after dipping late last year, the ONS said. According to projections published Thursday, the Bank of England now expects UK GDP to grow 0.5% this year, double the pace it forecast in February. By comparison, last year, GDP increased by a measly 0.1%. There are other signs the economy’s prospects are brightening. In April, combined output in manufacturing and services recorded the strongest rise in almost a year, according to a survey of purchasing managers compiled by S&P Global. Again, service firms drove the expansion. However, compared with its peers, the UK economy is faring less well. Last month, the International Monetary Fund downgraded its forecast for Britain’s economic growth this year from 0.6% to 0.5%. That is the second-slowest predicted growth rate among the Group of Seven developed economies, ahead of only Germany. “Although there are welcome signs of green shoots, any recovery is still at an early stage and it is likely to be fragile,” said Roger Barker, head of policy at the Institute of Directors, a business lobby group.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-1258789526.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title: 'Wealthy Americans are starting to spend more carefully',
      text:
          'Americans with deep pockets have played a growing role in powering the US economy with their spending. But their days of splurging like there’s no tomorrow might be coming to an end. US household wealth surged in recent years, despite the scourge of high inflation and the Federal Reserve’s bitter medicine of elevated borrowing costs to rein in price increases. A robust stock market coupled with rising home values have boosted Americans’ wealth from 2019 through 2022, according to a Federal Reserve report on household finances. That increase is known as “the wealth effect,” and it has continued to shore up Americans’ finances as stocks shatter records and high bond yields beef up savings accounts. Plus, Americans who locked in a low mortgage rate before the Fed began to hike interest rates in 2022 and have decided to stay put have been shielded from the effects of high mortgage rates. Put together, that means many consumers have not only been able to withstand inflation, to a degree, but they’ve also been able to spend on travel, concerts and big-ticket items. US economic growth accelerated at a brisk pace in 2023, largely thanks to the US consumer. And it’s Americans older than 54 who hold the vast amount of household wealth in the US, more than 70%, according to Fed data. But the economy’s momentum has slowed a bit recently with figures on employment and retail spending for April coming in weaker than expected. While the broader economy remains healthy, including the job market with sub-4% unemployment, there are signs that an important corner has been turned. The shifting behavior of wealthy Americans is one of them. “It’s well known that the lowest income consumer is really struggling with inflation, but from a purely economic standpoint, it is the higher quintiles of earners that do the most spending,” Nanette Abuhoff Jacobson, global investment strategist at Hartford Funds, told CNN. There’s been some evidence of wealthy Americans growing cautious in the latest round of company earnings results. British luxury retailer Burberry reported last week that its profits plummeted by 40% in the budget year ending in late March. Sales in the Americas dropped off by 12% over the year.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-1306777274-copy.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
    NewsItem(
      title: 'Japan’s economy contracts in first quarter',
      text:
          'Japan’s economy contracted in the first quarter, squeezed by weaker consumption and external demand and throwing a fresh challenge to policymakers as the central bank looks to lift interest rates away from near-zero levels. Preliminary gross domestic product (GDP) data from the Cabinet Office on Thursday showed Japan’s economy shrank 2.0% annualized in the January to March months from the prior quarter, faster than the 1.5% drop seen in a Reuters poll of economists. Downwardly revised data showed GDP barely grew in the fourth quarter. The reading translates into a quarterly contraction of 0.5%, versus a 0.4% decline expected by economists. Private consumption, which accounts for more than half of the Japanese economy, fell 0.7%, bigger than the forecast 0.2% drop. It was the fourth straight quarter of decline, the longest streak since 2009. “Japan’s economy hit the bottom in the first quarter,” said Yoshimasa Maruyama, chief market economist at SMBC Nikko Securities. “The economy will certainly rebound this quarter thanks to rising wages although uncertainty remains on service consumption.” Capital spending, a key driver of private demand, fell 0.8% in the first quarter, versus an expected decline of 0.7%, despite hefty corporate earnings. External demand, or exports minus imports, knocked 0.3 of a percentage point off first quarter GDP estimates. Policymakers are counting on rising wages and income tax cuts from June to help spur flagging consumption. The drag to growth from an earthquake in the Noto area this year and the suspension of operations at Toyota’s (TM) Daihatsu unit are also expected to fade. Still, a sharp decline in the yen to levels unseen since 1990 has fueled concerns about higher living costs, squeezing consumption. The Bank of Japan (BOJ) raised interest rates in March for the first time since 2007, in a landmark shift away from negative rates, but the central bank is expected to go slow in unwinding easy money conditions given a fragile economy.',
      image:
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2149615387.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 65, 16, 44),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [getNews()],
              ),
            )),
          ),
          const BottomBar(),
        ],
      ),
    );
  }

  Widget getNews() {
    List<Widget> list = [];
    for (var news in newsList) {
      list.add(Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => DescriptionNewsPage(
                        news: news,
                      )),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: const Color(0xFF262826))),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Container(
                  height: 146,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(
                            news.image!,
                          ))),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  news.title!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 22),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  news.text!,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      color: Colors.white.withOpacity(0.4),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ));
    }
    return Column(
      children: list,
    );
  }
}
