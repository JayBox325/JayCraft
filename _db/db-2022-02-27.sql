--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5 (Debian 13.5-1.pgdg110+1)
-- Dumped by pg_dump version 14.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.relations DROP CONSTRAINT IF EXISTS fk_zdjipvjlqnrdospodgmsnwlzzywahcjdzoiv;
ALTER TABLE IF EXISTS ONLY public.taggroups DROP CONSTRAINT IF EXISTS fk_zbgulkhpbuweikcprnczlgtygazioiiuwbfc;
ALTER TABLE IF EXISTS ONLY public.craftidtokens DROP CONSTRAINT IF EXISTS fk_yzangeeeswcudkflgrhtruvzbjvpprhoqcuw;
ALTER TABLE IF EXISTS ONLY public.matrixblocks DROP CONSTRAINT IF EXISTS fk_yvtfziadnxnboxskwmmorphwililthgscmuf;
ALTER TABLE IF EXISTS ONLY public.fieldlayoutfields DROP CONSTRAINT IF EXISTS fk_yvsrvmgwmjfrdxjmhfpfismxdbiibdnqvkti;
ALTER TABLE IF EXISTS ONLY public.supertableblocks DROP CONSTRAINT IF EXISTS fk_yvobgmgnfydcrzmysrdrezyfxvsrxoyhwmev;
ALTER TABLE IF EXISTS ONLY public.navigation_nodes DROP CONSTRAINT IF EXISTS fk_yigsidwolfpndxbwovilaiqprposjaykvceh;
ALTER TABLE IF EXISTS ONLY public.matrixblocks DROP CONSTRAINT IF EXISTS fk_yhdfkfahdgsjeocwfeviiijdunmfzpzbgmrp;
ALTER TABLE IF EXISTS ONLY public.templatecachequeries DROP CONSTRAINT IF EXISTS fk_yevmjkaaigjqpzwpidkombowkhumqaaeqsge;
ALTER TABLE IF EXISTS ONLY public.elements DROP CONSTRAINT IF EXISTS fk_ydscunulndoeszrjpvazgwzxztjrbdgdgwfz;
ALTER TABLE IF EXISTS ONLY public.globalsets DROP CONSTRAINT IF EXISTS fk_xvxuviobsnvmvyxdeuikbimxystbqhbaoujk;
ALTER TABLE IF EXISTS ONLY public.tags DROP CONSTRAINT IF EXISTS fk_xnhgbevbesktjieyqfuhptjiuudladcjkwox;
ALTER TABLE IF EXISTS ONLY public.supertableblocktypes DROP CONSTRAINT IF EXISTS fk_xfrrzrkdybfichnryliwbtkmltmvooydbscr;
ALTER TABLE IF EXISTS ONLY public.userpreferences DROP CONSTRAINT IF EXISTS fk_xectzczcdxgqakkmwhmalskmrnomyxbgdaxi;
ALTER TABLE IF EXISTS ONLY public.sections_sites DROP CONSTRAINT IF EXISTS fk_xczdulwakzvfojqqzpwjntdmpnsibbyzgfnq;
ALTER TABLE IF EXISTS ONLY public.fieldlayoutfields DROP CONSTRAINT IF EXISTS fk_wwjvmlykfvqbqwxooviouqjadperszdxhhla;
ALTER TABLE IF EXISTS ONLY public.userpermissions_usergroups DROP CONSTRAINT IF EXISTS fk_wlwwgarmgzgkuvhbpztnucmggaflbkdsabhl;
ALTER TABLE IF EXISTS ONLY public.fields DROP CONSTRAINT IF EXISTS fk_wgnibtqfwktovyeqihkwtlnfmrmfhcgoxrbq;
ALTER TABLE IF EXISTS ONLY public.elements DROP CONSTRAINT IF EXISTS fk_wghwurjvwugkigvkojdytojcvkvrffibwtqv;
ALTER TABLE IF EXISTS ONLY public.templatecaches DROP CONSTRAINT IF EXISTS fk_vxiszzcmwwkcnvyhhndrykbdqdcjgwrzttcm;
ALTER TABLE IF EXISTS ONLY public.userpermissions_users DROP CONSTRAINT IF EXISTS fk_vejxrfojlogacouikwfrzznoleunemanxcfa;
ALTER TABLE IF EXISTS ONLY public.sessions DROP CONSTRAINT IF EXISTS fk_vafdyhtwxodtzafqxtcjwigchortouikqsut;
ALTER TABLE IF EXISTS ONLY public.revisions DROP CONSTRAINT IF EXISTS fk_upvrdqpxzmjlcfcjtwtettjfoozcykoguanl;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS fk_uihwaijqwylfilgwzyffcmomviqmxpjzeika;
ALTER TABLE IF EXISTS ONLY public.structureelements DROP CONSTRAINT IF EXISTS fk_ueucdgevkyxpyenwglmkahkncblzkygkgown;
ALTER TABLE IF EXISTS ONLY public.cpnav_navigation DROP CONSTRAINT IF EXISTS fk_tstdwrivhhbccorlmbxkfyaksvrjsaoboogy;
ALTER TABLE IF EXISTS ONLY public.drafts DROP CONSTRAINT IF EXISTS fk_trewfwhlqtuutkcikxlxrudkptobasrlllru;
ALTER TABLE IF EXISTS ONLY public.changedattributes DROP CONSTRAINT IF EXISTS fk_trbfhevrbsxiukfjqpzlrctxjekekqaursvb;
ALTER TABLE IF EXISTS ONLY public.templatecacheelements DROP CONSTRAINT IF EXISTS fk_tjiabefucxmvmgzsecompzvyzrtbrqjffctl;
ALTER TABLE IF EXISTS ONLY public.changedattributes DROP CONSTRAINT IF EXISTS fk_sqtaleizlaonlfjbxtdegbszkhdmcytzjsob;
ALTER TABLE IF EXISTS ONLY public.volumefolders DROP CONSTRAINT IF EXISTS fk_sqobhanbfwjoqxoackitpaumguswvqcfhtlr;
ALTER TABLE IF EXISTS ONLY public.sections_sites DROP CONSTRAINT IF EXISTS fk_sqkbiywgmfmotybjwarzhxzcrdvbtfhylwgm;
ALTER TABLE IF EXISTS ONLY public.entries DROP CONSTRAINT IF EXISTS fk_sbuvavwsdxvswspuskqctkhlsmiloctgzfyy;
ALTER TABLE IF EXISTS ONLY public.matrixblocks DROP CONSTRAINT IF EXISTS fk_quhvndpuysucqqqdipaoajvftkibiutncsrw;
ALTER TABLE IF EXISTS ONLY public.structureelements DROP CONSTRAINT IF EXISTS fk_qtrzwnyfgtuczyqqorijrxwarjtpbslowwhb;
ALTER TABLE IF EXISTS ONLY public.categories DROP CONSTRAINT IF EXISTS fk_qgabuehcswvfjvppelwarizqrqibmvxcvfwf;
ALTER TABLE IF EXISTS ONLY public.categorygroups_sites DROP CONSTRAINT IF EXISTS fk_pyxxfveotkhnsofepzkaiynaxfplxkrmfpma;
ALTER TABLE IF EXISTS ONLY public.volumes DROP CONSTRAINT IF EXISTS fk_pyqvaozkhihcwkhjwezwhrhkbcnioyphlwkx;
ALTER TABLE IF EXISTS ONLY public.fieldlayouttabs DROP CONSTRAINT IF EXISTS fk_psbqjtzcnchcddnqwqxsillkyokzqppkzzjq;
ALTER TABLE IF EXISTS ONLY public.templatecacheelements DROP CONSTRAINT IF EXISTS fk_pkugeoogwanclofrexluhweafcliddlqkgzj;
ALTER TABLE IF EXISTS ONLY public.sites DROP CONSTRAINT IF EXISTS fk_pkezyqewqxwkcwrccguuqbybfxxisfomjouy;
ALTER TABLE IF EXISTS ONLY public.entries DROP CONSTRAINT IF EXISTS fk_pelzunpbmfsoiktcfwiqjazqtvjcmuebkitp;
ALTER TABLE IF EXISTS ONLY public.changedfields DROP CONSTRAINT IF EXISTS fk_pddqdekaclxrjcskxetwrnxxagonoamztfwx;
ALTER TABLE IF EXISTS ONLY public.widgets DROP CONSTRAINT IF EXISTS fk_ozzkhybvwqvihnrzpabbkfxfsfktlilxtuyq;
ALTER TABLE IF EXISTS ONLY public.categorygroups DROP CONSTRAINT IF EXISTS fk_oznlxxbltlpxehjklhnaaivexvsgeaivzogj;
ALTER TABLE IF EXISTS ONLY public.elements_sites DROP CONSTRAINT IF EXISTS fk_owfxdsxaiohkmucowgbsddpbvmdnhiubpwyl;
ALTER TABLE IF EXISTS ONLY public.gqltokens DROP CONSTRAINT IF EXISTS fk_oqvbzpgjunygjopmfgbkkedecgavwokrbozx;
ALTER TABLE IF EXISTS ONLY public.entries DROP CONSTRAINT IF EXISTS fk_oqlslufhpolydqzlnzuioxwdbsuaumspogkc;
ALTER TABLE IF EXISTS ONLY public.navigation_navs DROP CONSTRAINT IF EXISTS fk_nzjjbokyqccygcnetpsxktefxwosnpixkmpy;
ALTER TABLE IF EXISTS ONLY public.matrixblocktypes DROP CONSTRAINT IF EXISTS fk_nngbqjabpwvseygznhnmksheuxjlwxtfhtuf;
ALTER TABLE IF EXISTS ONLY public.entrytypes DROP CONSTRAINT IF EXISTS fk_nnfbbscblyoqbsvjyrthxbcoaqobiwlttvbc;
ALTER TABLE IF EXISTS ONLY public.assetindexdata DROP CONSTRAINT IF EXISTS fk_mzwkptzubpfnlpxcgdgtvpuwnjlbdxdyqlke;
ALTER TABLE IF EXISTS ONLY public.matrixblocktypes DROP CONSTRAINT IF EXISTS fk_mytkisrnijgadyadyxjjtaevgywpkevguniu;
ALTER TABLE IF EXISTS ONLY public.entrytypes DROP CONSTRAINT IF EXISTS fk_msjjbkdwtxttpofwbqlckkqxzkvsfhbanccm;
ALTER TABLE IF EXISTS ONLY public.assets DROP CONSTRAINT IF EXISTS fk_mjsrzulfghhvvvvsdhusqzddsuptlcqabzzj;
ALTER TABLE IF EXISTS ONLY public.userpermissions_users DROP CONSTRAINT IF EXISTS fk_mdvfacskpfqayuxwpjhmagcmtkiqritcljfb;
ALTER TABLE IF EXISTS ONLY public.snitch_collisions DROP CONSTRAINT IF EXISTS fk_mdqbwwcumojurgcqsvcthvmpsdeviougdlpf;
ALTER TABLE IF EXISTS ONLY public.supertableblocks DROP CONSTRAINT IF EXISTS fk_lowpmibwasydgfoyxilkkdbrqfzmqajpttit;
ALTER TABLE IF EXISTS ONLY public.globalsets DROP CONSTRAINT IF EXISTS fk_lmaesxdahuxenwozquivzvonpcpnyeqrmbrs;
ALTER TABLE IF EXISTS ONLY public.revisions DROP CONSTRAINT IF EXISTS fk_ljfmjvjcriveesesffjolqiegzpbzkpzvnnb;
ALTER TABLE IF EXISTS ONLY public.assets DROP CONSTRAINT IF EXISTS fk_kzwfhuqpvkwwihnxewjmjeqsmdlhgpnxjqhv;
ALTER TABLE IF EXISTS ONLY public.volumefolders DROP CONSTRAINT IF EXISTS fk_kzlzfbchlbssxpupniiuisxaprnsgaxusdsf;
ALTER TABLE IF EXISTS ONLY public.relations DROP CONSTRAINT IF EXISTS fk_kxhsjdqwgzvqbjanjdizlcdpemqibndabnbh;
ALTER TABLE IF EXISTS ONLY public.sections DROP CONSTRAINT IF EXISTS fk_kukjhpflfufpmnkfajwenhtgtqmjhsgnmdgt;
ALTER TABLE IF EXISTS ONLY public.categorygroups DROP CONSTRAINT IF EXISTS fk_kgniqldsyrvmqhfyyezvvyanjihqimwogjpn;
ALTER TABLE IF EXISTS ONLY public.changedfields DROP CONSTRAINT IF EXISTS fk_kejvwszhzjcszgovmwokkldpolssyxiiglok;
ALTER TABLE IF EXISTS ONLY public.fieldlayoutfields DROP CONSTRAINT IF EXISTS fk_jiqtizdykcdjnsnfkfpijihlofurcfhblenl;
ALTER TABLE IF EXISTS ONLY public.entries DROP CONSTRAINT IF EXISTS fk_iqaudydqvgtxhqhrkshjbkhmjutpzfsylyrp;
ALTER TABLE IF EXISTS ONLY public.tags DROP CONSTRAINT IF EXISTS fk_iouleermutltbfgnsnycakbsgpswfvbcjrxq;
ALTER TABLE IF EXISTS ONLY public.elements DROP CONSTRAINT IF EXISTS fk_iomwyfnfkugrfvdnwzwapxoxcgnocxarqbgs;
ALTER TABLE IF EXISTS ONLY public.categorygroups_sites DROP CONSTRAINT IF EXISTS fk_ikhfvelzaqbyxfeixroqikwlgqcgsyrtzjck;
ALTER TABLE IF EXISTS ONLY public.matrixblocks DROP CONSTRAINT IF EXISTS fk_ihgcoyinwgriavgwgsqjopnlsgvuwpgmupew;
ALTER TABLE IF EXISTS ONLY public.navigation_nodes DROP CONSTRAINT IF EXISTS fk_iciswhdeoapvficpjcmkourlwulmlnxhgppv;
ALTER TABLE IF EXISTS ONLY public.userpermissions_usergroups DROP CONSTRAINT IF EXISTS fk_hxpjoazxxshcjofsoeqabwbkpykszwohbstr;
ALTER TABLE IF EXISTS ONLY public.elements DROP CONSTRAINT IF EXISTS fk_htnzkmnlcqsuugerefpsmodozzkskvskvskr;
ALTER TABLE IF EXISTS ONLY public.navigation_nodes DROP CONSTRAINT IF EXISTS fk_hogyuiunbtnbwwwnmtjxvdgikshimzqbbfnt;
ALTER TABLE IF EXISTS ONLY public.entries DROP CONSTRAINT IF EXISTS fk_hognunaerghsuwlkumfhmrfzzjcajunhovqi;
ALTER TABLE IF EXISTS ONLY public.categories DROP CONSTRAINT IF EXISTS fk_hcmpsrfoifexiaoodaxakombuubcsytugxvc;
ALTER TABLE IF EXISTS ONLY public.categories DROP CONSTRAINT IF EXISTS fk_hahnufxellgovbyppybodktsjwnspogeleep;
ALTER TABLE IF EXISTS ONLY public.usergroups_users DROP CONSTRAINT IF EXISTS fk_gycyzotdfamdxhqlenaehvqgzmomxrzobocj;
ALTER TABLE IF EXISTS ONLY public.announcements DROP CONSTRAINT IF EXISTS fk_gjeisdpotgslfmfhsxypdlaoseguwhtdkfuc;
ALTER TABLE IF EXISTS ONLY public.stc_socialnetworks DROP CONSTRAINT IF EXISTS fk_ghzzsohragjjgvfpqrnleqgcohfnfdpdfxxi;
ALTER TABLE IF EXISTS ONLY public.assets DROP CONSTRAINT IF EXISTS fk_fzbvgthxqjskuhozqruoimctqrvjivzzpxhs;
ALTER TABLE IF EXISTS ONLY public.assets DROP CONSTRAINT IF EXISTS fk_fmraznhdkosklhgafiyzoqtqgikcxujkckvu;
ALTER TABLE IF EXISTS ONLY public.changedfields DROP CONSTRAINT IF EXISTS fk_fdapggyqgwllwiyvqlalvbiyjikheuvvxakd;
ALTER TABLE IF EXISTS ONLY public.usergroups_users DROP CONSTRAINT IF EXISTS fk_fcjgxyevvuzgntnizkhyyxgzjzgjlklgflue;
ALTER TABLE IF EXISTS ONLY public.content DROP CONSTRAINT IF EXISTS fk_fcgsjbssjlktflfzpekmkczmjntekfeesesm;
ALTER TABLE IF EXISTS ONLY public.stc_socialnetworks DROP CONSTRAINT IF EXISTS fk_ezdcxmlockzhduuwveusgrqlgsohknkymjcd;
ALTER TABLE IF EXISTS ONLY public.supertableblocks DROP CONSTRAINT IF EXISTS fk_eilqmtfpbrubqvbuooccyidesmobgdleibru;
ALTER TABLE IF EXISTS ONLY public.announcements DROP CONSTRAINT IF EXISTS fk_dxfzsyixyxwijhfeshdsifdkdzphacvrdaaq;
ALTER TABLE IF EXISTS ONLY public.relations DROP CONSTRAINT IF EXISTS fk_cvzrzlrwzmcspdhifinlgkejcbkqhrbymkzb;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS fk_crsozdnkvvjhazgxuukwmpkkxegigohiojmn;
ALTER TABLE IF EXISTS ONLY public.supertableblocktypes DROP CONSTRAINT IF EXISTS fk_cixerwmdvcndmsuvhavvyimjwvivplnxvkqt;
ALTER TABLE IF EXISTS ONLY public.shunnedmessages DROP CONSTRAINT IF EXISTS fk_chfwbayesjvqiewrrkkvauzuitxkjmmqsuzg;
ALTER TABLE IF EXISTS ONLY public.supertableblocks DROP CONSTRAINT IF EXISTS fk_cfcncvldkkzzrdyxlwdogkirhqmldaypzrfi;
ALTER TABLE IF EXISTS ONLY public.changedattributes DROP CONSTRAINT IF EXISTS fk_cevksoibizlqchkzkhbfovrvcsmkwrsmvqlp;
ALTER TABLE IF EXISTS ONLY public.content DROP CONSTRAINT IF EXISTS fk_cbgkzvoknzavhbfqvyvbeahljuvwdzhrzcnl;
ALTER TABLE IF EXISTS ONLY public.changedfields DROP CONSTRAINT IF EXISTS fk_bfvikeojenlzysuapwfldovewetqdkplkwgv;
ALTER TABLE IF EXISTS ONLY public.drafts DROP CONSTRAINT IF EXISTS fk_bfrtosicsxuwplxnsfpzztcfuuwfxhazzdur;
ALTER TABLE IF EXISTS ONLY public.elements_sites DROP CONSTRAINT IF EXISTS fk_bfjkehosejhpsyzwzuugzzelvhshwanhwztz;
ALTER TABLE IF EXISTS ONLY public.relations DROP CONSTRAINT IF EXISTS fk_amuttbwonuvkjxnqokrsokksulfhbfjbpnae;
ALTER TABLE IF EXISTS ONLY public.navigation_navs DROP CONSTRAINT IF EXISTS fk_alfvvidoethuculicmclzowbcxkoqcisvlgg;
DROP INDEX IF EXISTS public.idx_zvariuyexdxxwnzpgsylcbovstniaqfevngd;
DROP INDEX IF EXISTS public.idx_zqkbrieyewydhoanyimdiyieyfvaxqqgxicb;
DROP INDEX IF EXISTS public.idx_zcwdtjtilatvndjfhdrowebxvabplbpgifvt;
DROP INDEX IF EXISTS public.idx_zcprpffyzkwdzmjgshphyhfmepfcczuuaqde;
DROP INDEX IF EXISTS public.idx_zbxianbergousjlwycatlzrobbdbvgqfgwbc;
DROP INDEX IF EXISTS public.idx_ywqytpaxipzstzjptpdwtbcmhhtljfufeoij;
DROP INDEX IF EXISTS public.idx_yqbgzwcqgiozuhdazijucfopczdqnyzkqdak;
DROP INDEX IF EXISTS public.idx_yokxxkhdbhscybkqivgjsqugdvmeulcnamux;
DROP INDEX IF EXISTS public.idx_yicyrkavcydfhqqremzwsgkjcdtvwjdqeorg;
DROP INDEX IF EXISTS public.idx_yhybqbmljvajzzgubgkvfbuuezsaelfkkeiw;
DROP INDEX IF EXISTS public.idx_ygazmyzixpxftsyjqqgkpjpnwssnvpztpzpf;
DROP INDEX IF EXISTS public.idx_yelvurqbulylrijijnpnfudjzwbvqzysaubj;
DROP INDEX IF EXISTS public.idx_ydiodaxngzzehkhfojdryvyvdbmjjhmvmxps;
DROP INDEX IF EXISTS public.idx_xzwltnvbxzzkrlcjwstfpqgutcvnroletumj;
DROP INDEX IF EXISTS public.idx_xxjdejndzbgqzudygweytwbzumcvcedjpdix;
DROP INDEX IF EXISTS public.idx_xpfngxhwjdpppwoacidqskwfrwtykrrzcxhz;
DROP INDEX IF EXISTS public.idx_xlbhkgiiaprzwpzfpdcwcqrzsqdtjxdlykos;
DROP INDEX IF EXISTS public.idx_xgjxuwhwrwrvwutkjliodpqmofogotlkapxk;
DROP INDEX IF EXISTS public.idx_wzsisxvwhumntsjfmdolkuhgyogjhdjhuwni;
DROP INDEX IF EXISTS public.idx_wzkpmtfrygotsexzmjmrlxcywdgsxhlukmqf;
DROP INDEX IF EXISTS public.idx_wywnimykhmssjitizvcpzjllfawkfxzvtzpp;
DROP INDEX IF EXISTS public.idx_wpeysfqkaedxmoxxvdtcsmulplqzcbdrcsvh;
DROP INDEX IF EXISTS public.idx_wnqxymosfivdkogddloslhaltgegsvulzqde;
DROP INDEX IF EXISTS public.idx_wnlxwldjzoentrneeuzcfdagjkzhlhtvnhln;
DROP INDEX IF EXISTS public.idx_vwfcsssuhmllwrrcxucqojqrmrdkfaurqnwc;
DROP INDEX IF EXISTS public.idx_vssreoqbkdxgxnscmpgqastbwagcxiogbtxm;
DROP INDEX IF EXISTS public.idx_vrgyhabsptgygzmvzzozicbqwgcokspokzns;
DROP INDEX IF EXISTS public.idx_vkrajzikfwzpyvgyosnotjckaavpuxhbneen;
DROP INDEX IF EXISTS public.idx_vhusoppvrozzjnbviltsthfrovcjptsptozj;
DROP INDEX IF EXISTS public.idx_vfmbkghncejtaabeoiwbtaeizndtvasqnbhb;
DROP INDEX IF EXISTS public.idx_vcovekhipggroknnsishcndaxwmfqziotcnr;
DROP INDEX IF EXISTS public.idx_vaopzzpghhgwpqixoxuizeocfmyglvrmqqws;
DROP INDEX IF EXISTS public.idx_uzkdkikdihaoflzdlipqllvbwqoprdzundtk;
DROP INDEX IF EXISTS public.idx_unqafrssumfcflkqllamxscectkhyvhhdozh;
DROP INDEX IF EXISTS public.idx_uakvzlargevxbxgzpkgtuafwzlqywjxmzlyq;
DROP INDEX IF EXISTS public.idx_tzveibgrboiqssavqpllfmkrhelxvltvygks;
DROP INDEX IF EXISTS public.idx_tydfmxdzscelhmhurypcoshtsrhvwnwkckly;
DROP INDEX IF EXISTS public.idx_tlsoigibwmwvtcshdtikhjvppmdhshzxynkc;
DROP INDEX IF EXISTS public.idx_tjmyofoseaawpmtlmwvpxiswrgnctgvvkwpp;
DROP INDEX IF EXISTS public.idx_tacmescfatbeitlltjpyugnffbflrhbtbfnh;
DROP INDEX IF EXISTS public.idx_szqonhxzwlfxpeoazoeerhliuskbknrktvnz;
DROP INDEX IF EXISTS public.idx_sxqgdpnvahdkjxfudexggohvfjlgibvwsvdo;
DROP INDEX IF EXISTS public.idx_sxejppvgbxubccuxicgahlxwboacwwszopoz;
DROP INDEX IF EXISTS public.idx_suvvqzhjsthemiezhxbpbrcqtrhhlsaeribi;
DROP INDEX IF EXISTS public.idx_sswskeugfwkanswjoyvcdcnlwtjvnwzytffu;
DROP INDEX IF EXISTS public.idx_spqweyrisqswavdpapncfmypbslgcmhvesia;
DROP INDEX IF EXISTS public.idx_seidbzdvtqmxtpkdzslmhmygbxjhugjfjowo;
DROP INDEX IF EXISTS public.idx_rqqsudoeeftdagdnevlkhibdeymvhfffpqtk;
DROP INDEX IF EXISTS public.idx_rkeaeougnrsnytczgghaqglsctukprdtcdbq;
DROP INDEX IF EXISTS public.idx_rfkryuchbigfoxsvtngoumprdutgrmkhqqao;
DROP INDEX IF EXISTS public.idx_reggwjedoacnwqxukophurkwnkppglrdxypb;
DROP INDEX IF EXISTS public.idx_rbklezdquzbovmhgyzhwiakkzspkptqgjvsc;
DROP INDEX IF EXISTS public.idx_rasgqeridabnxvlmruolpsgubflhpniqeyod;
DROP INDEX IF EXISTS public.idx_qyvtqocarzegpeqqalynypgxcsyjjljgchuk;
DROP INDEX IF EXISTS public.idx_qrkfyzzpqflyvqrgeyxaixznwhxvlpfzdbtf;
DROP INDEX IF EXISTS public.idx_qrgfgbgiqteuugyoveflrxdkhoganuytpwqb;
DROP INDEX IF EXISTS public.idx_qnnbkfbaewtewfexbmbejutqiptkptipfsip;
DROP INDEX IF EXISTS public.idx_qdrihzslnnebaxflebnpthmqjmkfihtkfqgj;
DROP INDEX IF EXISTS public.idx_puaqkdexivlxsiznmkbcqqcvplbtbiqjhumy;
DROP INDEX IF EXISTS public.idx_ppomblrfsgrakryflzpywoipuzkuhwdxgmqv;
DROP INDEX IF EXISTS public.idx_plhfakjlfochqkzexthzewywbhcdpatksjdf;
DROP INDEX IF EXISTS public.idx_pihkrlbslnkvhndzykwqtvimkttewboaragk;
DROP INDEX IF EXISTS public.idx_oyizsbsztrrzkidhoemxsxzuumkostdandtz;
DROP INDEX IF EXISTS public.idx_ouztswsqvsyjdsdbsmfaomgbrzbituvqfnle;
DROP INDEX IF EXISTS public.idx_otweukusozsgscwcmljhhyqqvepzclextxhv;
DROP INDEX IF EXISTS public.idx_otinmhykunroqntlrmtuekzbezccyimsorci;
DROP INDEX IF EXISTS public.idx_oqsbypnghxralbrjrudgwtkmwqkoxczyovsk;
DROP INDEX IF EXISTS public.idx_odievrgjymrlidkbwonceobgkvoyvkwpyliy;
DROP INDEX IF EXISTS public.idx_nzyifizrmrptlzsaxsbpbjtpkxjiqjvqzsoj;
DROP INDEX IF EXISTS public.idx_nyqjorgbszaiwvxptwkqsxbzewhmqtqxvgxh;
DROP INDEX IF EXISTS public.idx_nxktaddelhxfehkjelgpqcxhwtjwgnbganmt;
DROP INDEX IF EXISTS public.idx_nxjzjdpbhrwvchtcobnmslvtfrmebpuaszjy;
DROP INDEX IF EXISTS public.idx_nwftgbbwfypsujbolbogdljhbhuddhpfrflq;
DROP INDEX IF EXISTS public.idx_nqdxebjftprnhctoghngpfugbgoddtdtkffa;
DROP INDEX IF EXISTS public.idx_npjvwbvfkeuwtamtwojosdstywqwoiruewjo;
DROP INDEX IF EXISTS public.idx_nnkihcvfvvuhehlvgbkhoabgdhfrrsipavub;
DROP INDEX IF EXISTS public.idx_njlkvemnytddanultlufwatdjpyvzzglcmyv;
DROP INDEX IF EXISTS public.idx_ncaoldkxfemdjaqhvtdoaxnxfzhwtkwlpqrt;
DROP INDEX IF EXISTS public.idx_mxfitnlzgfwhyxzzvpqntbwnrghyxmbdklfl;
DROP INDEX IF EXISTS public.idx_mpgztjigkkncndmqxymamzgdnzguktqjffta;
DROP INDEX IF EXISTS public.idx_mpclexghfwytjqvqeullsodplxuvumvfbrxe;
DROP INDEX IF EXISTS public.idx_mipadacbnglmmrzgherdaljgjdrucccenwxy;
DROP INDEX IF EXISTS public.idx_lxzmeymvagtldmjyxrwokmsbgjfxaeokddgz;
DROP INDEX IF EXISTS public.idx_lrytzjnszeemhffbewjuhaxrveojqjhftyqx;
DROP INDEX IF EXISTS public.idx_lqgxbudordopbivlipzasffnnxzxweshacij;
DROP INDEX IF EXISTS public.idx_lkkubfkmdblmilxndfujcioecdcslyeqxkaz;
DROP INDEX IF EXISTS public.idx_lbrptsasfhhanuzynpbgprzgnqoakozfjgij;
DROP INDEX IF EXISTS public.idx_kvrejkcodkaasoyikdjdssbuybyvbexrzmtt;
DROP INDEX IF EXISTS public.idx_kqsvnghqknkreypvunrofbfiyyhaivdhppdf;
DROP INDEX IF EXISTS public.idx_kptziqckscjrvqmqauajpxuhiytkdzfaibko;
DROP INDEX IF EXISTS public.idx_knimmxmnuevnxugsfobptjdqlioloxwaasuf;
DROP INDEX IF EXISTS public.idx_kkgpbvctboerxljalzwjbzhlihwzaumrmegl;
DROP INDEX IF EXISTS public.idx_kjrnwgkhxjvqvbryqvzzpinkajqpnahhqomz;
DROP INDEX IF EXISTS public.idx_kejkycujopkblqveojatbqqhbvclvpyutceq;
DROP INDEX IF EXISTS public.idx_kdjspjoyebvvwlyfiqyjnwuozqgkgsqajbis;
DROP INDEX IF EXISTS public.idx_jzssselzamapdaqdhbtzknhqwewnzmghiqrj;
DROP INDEX IF EXISTS public.idx_jynjuehmnozjktnrrtvyfyduyeyjktgjcdxm;
DROP INDEX IF EXISTS public.idx_jvqmsntxrknjjtgldvqqchfmkdhfcpwulzsv;
DROP INDEX IF EXISTS public.idx_juvtefbzwdubljfijcobcvhuubqdgpcfsgwy;
DROP INDEX IF EXISTS public.idx_juqwpsflhpmjlmdcrkkkchtftzhfacavnvts;
DROP INDEX IF EXISTS public.idx_jretgrrosptkuschpbiftkwmixkrzlumixrj;
DROP INDEX IF EXISTS public.idx_jpwnehvbvodlqfwxlalrcvivddejbviofytp;
DROP INDEX IF EXISTS public.idx_jlzevxnqqnvsrixyaszxdywulncmxsnefblv;
DROP INDEX IF EXISTS public.idx_izrqxwnudsyywkctwyiqmeaosycejafqkmjl;
DROP INDEX IF EXISTS public.idx_itltbtnfwuoaigzmftigkozcrmxsddcieuex;
DROP INDEX IF EXISTS public.idx_hxzfpdrgkjgrpxjdqqbythxscqrkbqcylhxk;
DROP INDEX IF EXISTS public.idx_hxrdaojnopgxiqvdytrlpxzpirrjnuqafhic;
DROP INDEX IF EXISTS public.idx_hxozuphdrbsqpbrscuyypnugvfdsantcukwu;
DROP INDEX IF EXISTS public.idx_hryxpxavrhpdqmeliehcaxwtbozgsddujpyi;
DROP INDEX IF EXISTS public.idx_hmkbwszgsqybvomekxqwkqjtsszcgdcfudar;
DROP INDEX IF EXISTS public.idx_hmbhdjjbnbbarwvnvgqutpplvdjaxtdqzilt;
DROP INDEX IF EXISTS public.idx_hhftgyjnezbbsdtxfxqeaiwajwlxeuxsflut;
DROP INDEX IF EXISTS public.idx_hdqvtimerwgfekhhvcqhksxiswotyllbmlet;
DROP INDEX IF EXISTS public.idx_gzzgmfzrjdhohyvppbvqlcbbwphfkfpfvlam;
DROP INDEX IF EXISTS public.idx_gvtdmyfqjcxdwoluofopimumryxuabxmkhnx;
DROP INDEX IF EXISTS public.idx_gvhrbeefrwejjbxzcvpiwfyceruhnvqhgcoy;
DROP INDEX IF EXISTS public.idx_guemzfoffrpkkqcbbigsgkrnfurapmnthris;
DROP INDEX IF EXISTS public.idx_gtyihumsoxtithcfcxmchyndcbyzirtwgnvr;
DROP INDEX IF EXISTS public.idx_gonvsiunmluicyxkcbgiwjzjjkqunfwvzuor;
DROP INDEX IF EXISTS public.idx_glvudjjdnvvumfdaarfqdjpbmquyiurjzjeb;
DROP INDEX IF EXISTS public.idx_gjzvjkiujmlodwtxlkshufottpgounljcqgs;
DROP INDEX IF EXISTS public.idx_gjfzyheyvhsqppkixtquiawfjrvkpgycbwlb;
DROP INDEX IF EXISTS public.idx_gelfrniikyhxtizbvethsdpqxxannufvgzwf;
DROP INDEX IF EXISTS public.idx_ftbmtyommvjidpojmyyxdzvmonoudmvcqezr;
DROP INDEX IF EXISTS public.idx_fsrcyaiaimzxfwqrkecprfsgbznzpgowxvki;
DROP INDEX IF EXISTS public.idx_fqjvrklykqnsfszthgoufjndenjiwizqorat;
DROP INDEX IF EXISTS public.idx_fhzdgauklbtkfmbsvrvtzfvshlfunnhgqbgc;
DROP INDEX IF EXISTS public.idx_fhxytyppidpaamtesihpqqmtdqmfvkmkialf;
DROP INDEX IF EXISTS public.idx_fcdlwseoxsoqvaiglmictequpencmmwrksbt;
DROP INDEX IF EXISTS public.idx_fbhlhmndjyfgbmtobudvjskykdbnbsepzlyk;
DROP INDEX IF EXISTS public.idx_faokvvfvvgrscsidgkkxsqfimdwbenyxwjxs;
DROP INDEX IF EXISTS public.idx_enkcijmptkyarpletyyzxydrakpneplrvpqr;
DROP INDEX IF EXISTS public.idx_emmcnlpmghtlpecaeqdhpiojwrbphkfyvxpv;
DROP INDEX IF EXISTS public.idx_eftlzfruwyrzwualavseuojfmsbbvpmlkgrz;
DROP INDEX IF EXISTS public.idx_eatdswftzyggpnpuopyrpksrdwpkyjujeigk;
DROP INDEX IF EXISTS public.idx_dyoibxtgdrlhgdpohlbzntjjfmrkxhkdhlmn;
DROP INDEX IF EXISTS public.idx_dyjqlbfbjwycqmwpgpztibjzdhfxcnhfyjgl;
DROP INDEX IF EXISTS public.idx_dyhmcmyoxzoqlnenoedzamomjuqvynbhikfe;
DROP INDEX IF EXISTS public.idx_dxxvmygxpipplbqijhwhaouubmaotixzzuix;
DROP INDEX IF EXISTS public.idx_drwrgnknqdsyiilhwolavlujnfxuccavojkn;
DROP INDEX IF EXISTS public.idx_dmxybaeyqbuhvczbpmhqkegktrzaeferwrdd;
DROP INDEX IF EXISTS public.idx_cwwuardfhbdqvognqtfniahajppsvgbvmbud;
DROP INDEX IF EXISTS public.idx_cvmxrfhkwzmqunjdkxirjhscetifxuugdblt;
DROP INDEX IF EXISTS public.idx_cqexaazncridhybgktqhxmloiyjxkrqgekug;
DROP INDEX IF EXISTS public.idx_cnpxkfzkenoufddesgtjxsvbelhcyrjdzyrc;
DROP INDEX IF EXISTS public.idx_clzyejjukyuopfttvbwgycojpjjylzlhxwdm;
DROP INDEX IF EXISTS public.idx_cgmoqqbvaqvpshxfjzqfazhkzwnrhfakajai;
DROP INDEX IF EXISTS public.idx_cgktiucqlkbpsgnlllzqbqofymmivsgtezwn;
DROP INDEX IF EXISTS public.idx_cfuhzvptmeikiihpneaghulotmnmyacmmueo;
DROP INDEX IF EXISTS public.idx_cdlpawycghyrqysuajxhiphxvhtqtzjdqruk;
DROP INDEX IF EXISTS public.idx_bqyvcvpzkuogagdxnmckbgsrhpxgdmltosdj;
DROP INDEX IF EXISTS public.idx_benmjsbvecqgnqtpchwxujxruptpnbolhosk;
DROP INDEX IF EXISTS public.idx_aqxzrrudrqmvwwpoojpuqgawlilgnoekkyzt;
DROP INDEX IF EXISTS public.idx_aoygwzlzcigwvotgswdgxtiujduamlrwhnre;
DROP INDEX IF EXISTS public.idx_anoriromnzyxeyuhbenukzfnlgvpzqsqtkoj;
DROP INDEX IF EXISTS public.idx_aezzhsmdvkjctolwrdaamvxivuqzilejnybt;
DROP INDEX IF EXISTS public.idx_adbyvzducluoisugmzfyzdsurytzzhcdkyul;
DROP INDEX IF EXISTS public.idx_acyryiftyoovimngebopabhrmbjhiwlpggej;
ALTER TABLE IF EXISTS ONLY public.widgets DROP CONSTRAINT IF EXISTS widgets_pkey;
ALTER TABLE IF EXISTS ONLY public.volumes DROP CONSTRAINT IF EXISTS volumes_pkey;
ALTER TABLE IF EXISTS ONLY public.volumefolders DROP CONSTRAINT IF EXISTS volumefolders_pkey;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_pkey;
ALTER TABLE IF EXISTS ONLY public.userpreferences DROP CONSTRAINT IF EXISTS userpreferences_pkey;
ALTER TABLE IF EXISTS ONLY public.userpermissions_users DROP CONSTRAINT IF EXISTS userpermissions_users_pkey;
ALTER TABLE IF EXISTS ONLY public.userpermissions_usergroups DROP CONSTRAINT IF EXISTS userpermissions_usergroups_pkey;
ALTER TABLE IF EXISTS ONLY public.userpermissions DROP CONSTRAINT IF EXISTS userpermissions_pkey;
ALTER TABLE IF EXISTS ONLY public.usergroups_users DROP CONSTRAINT IF EXISTS usergroups_users_pkey;
ALTER TABLE IF EXISTS ONLY public.usergroups DROP CONSTRAINT IF EXISTS usergroups_pkey;
ALTER TABLE IF EXISTS ONLY public.tokens DROP CONSTRAINT IF EXISTS tokens_pkey;
ALTER TABLE IF EXISTS ONLY public.templatecaches DROP CONSTRAINT IF EXISTS templatecaches_pkey;
ALTER TABLE IF EXISTS ONLY public.templatecachequeries DROP CONSTRAINT IF EXISTS templatecachequeries_pkey;
ALTER TABLE IF EXISTS ONLY public.templatecacheelements DROP CONSTRAINT IF EXISTS templatecacheelements_pkey;
ALTER TABLE IF EXISTS ONLY public.tags DROP CONSTRAINT IF EXISTS tags_pkey;
ALTER TABLE IF EXISTS ONLY public.taggroups DROP CONSTRAINT IF EXISTS taggroups_pkey;
ALTER TABLE IF EXISTS ONLY public.systemmessages DROP CONSTRAINT IF EXISTS systemmessages_pkey;
ALTER TABLE IF EXISTS ONLY public.supertableblocktypes DROP CONSTRAINT IF EXISTS supertableblocktypes_pkey;
ALTER TABLE IF EXISTS ONLY public.supertableblocks DROP CONSTRAINT IF EXISTS supertableblocks_pkey;
ALTER TABLE IF EXISTS ONLY public.structures DROP CONSTRAINT IF EXISTS structures_pkey;
ALTER TABLE IF EXISTS ONLY public.structureelements DROP CONSTRAINT IF EXISTS structureelements_pkey;
ALTER TABLE IF EXISTS ONLY public.stc_socialnetworks DROP CONSTRAINT IF EXISTS stc_socialnetworks_pkey;
ALTER TABLE IF EXISTS ONLY public.snitch_collisions DROP CONSTRAINT IF EXISTS snitch_collisions_pkey;
ALTER TABLE IF EXISTS ONLY public.sites DROP CONSTRAINT IF EXISTS sites_pkey;
ALTER TABLE IF EXISTS ONLY public.sitegroups DROP CONSTRAINT IF EXISTS sitegroups_pkey;
ALTER TABLE IF EXISTS ONLY public.shunnedmessages DROP CONSTRAINT IF EXISTS shunnedmessages_pkey;
ALTER TABLE IF EXISTS ONLY public.sessions DROP CONSTRAINT IF EXISTS sessions_pkey;
ALTER TABLE IF EXISTS ONLY public.sequences DROP CONSTRAINT IF EXISTS sequences_pkey;
ALTER TABLE IF EXISTS ONLY public.sections_sites DROP CONSTRAINT IF EXISTS sections_sites_pkey;
ALTER TABLE IF EXISTS ONLY public.sections DROP CONSTRAINT IF EXISTS sections_pkey;
ALTER TABLE IF EXISTS ONLY public.revisions DROP CONSTRAINT IF EXISTS revisions_pkey;
ALTER TABLE IF EXISTS ONLY public.resourcepaths DROP CONSTRAINT IF EXISTS resourcepaths_pkey;
ALTER TABLE IF EXISTS ONLY public.relations DROP CONSTRAINT IF EXISTS relations_pkey;
ALTER TABLE IF EXISTS ONLY public.queue DROP CONSTRAINT IF EXISTS queue_pkey;
ALTER TABLE IF EXISTS ONLY public.projectconfig DROP CONSTRAINT IF EXISTS projectconfig_pkey;
ALTER TABLE IF EXISTS ONLY public.plugins DROP CONSTRAINT IF EXISTS plugins_pkey;
ALTER TABLE IF EXISTS ONLY public.searchindex DROP CONSTRAINT IF EXISTS pk_hcvgyimzefnqevxuoadouagimiydxdmxlvaq;
ALTER TABLE IF EXISTS ONLY public.navigation_nodes DROP CONSTRAINT IF EXISTS navigation_nodes_pkey;
ALTER TABLE IF EXISTS ONLY public.navigation_navs DROP CONSTRAINT IF EXISTS navigation_navs_pkey;
ALTER TABLE IF EXISTS ONLY public.migrations DROP CONSTRAINT IF EXISTS migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.matrixblocktypes DROP CONSTRAINT IF EXISTS matrixblocktypes_pkey;
ALTER TABLE IF EXISTS ONLY public.matrixblocks DROP CONSTRAINT IF EXISTS matrixblocks_pkey;
ALTER TABLE IF EXISTS ONLY public.info DROP CONSTRAINT IF EXISTS info_pkey;
ALTER TABLE IF EXISTS ONLY public.gqltokens DROP CONSTRAINT IF EXISTS gqltokens_pkey;
ALTER TABLE IF EXISTS ONLY public.gqlschemas DROP CONSTRAINT IF EXISTS gqlschemas_pkey;
ALTER TABLE IF EXISTS ONLY public.globalsets DROP CONSTRAINT IF EXISTS globalsets_pkey;
ALTER TABLE IF EXISTS ONLY public.fields DROP CONSTRAINT IF EXISTS fields_pkey;
ALTER TABLE IF EXISTS ONLY public.fieldlayouttabs DROP CONSTRAINT IF EXISTS fieldlayouttabs_pkey;
ALTER TABLE IF EXISTS ONLY public.fieldlayouts DROP CONSTRAINT IF EXISTS fieldlayouts_pkey;
ALTER TABLE IF EXISTS ONLY public.fieldlayoutfields DROP CONSTRAINT IF EXISTS fieldlayoutfields_pkey;
ALTER TABLE IF EXISTS ONLY public.fieldgroups DROP CONSTRAINT IF EXISTS fieldgroups_pkey;
ALTER TABLE IF EXISTS ONLY public.entrytypes DROP CONSTRAINT IF EXISTS entrytypes_pkey;
ALTER TABLE IF EXISTS ONLY public.entries DROP CONSTRAINT IF EXISTS entries_pkey;
ALTER TABLE IF EXISTS ONLY public.elements_sites DROP CONSTRAINT IF EXISTS elements_sites_pkey;
ALTER TABLE IF EXISTS ONLY public.elements DROP CONSTRAINT IF EXISTS elements_pkey;
ALTER TABLE IF EXISTS ONLY public.elementindexsettings DROP CONSTRAINT IF EXISTS elementindexsettings_pkey;
ALTER TABLE IF EXISTS ONLY public.drafts DROP CONSTRAINT IF EXISTS drafts_pkey;
ALTER TABLE IF EXISTS ONLY public.deprecationerrors DROP CONSTRAINT IF EXISTS deprecationerrors_pkey;
ALTER TABLE IF EXISTS ONLY public.craftidtokens DROP CONSTRAINT IF EXISTS craftidtokens_pkey;
ALTER TABLE IF EXISTS ONLY public.cpnav_pending_navigations DROP CONSTRAINT IF EXISTS cpnav_pending_navigations_pkey;
ALTER TABLE IF EXISTS ONLY public.cpnav_navigation DROP CONSTRAINT IF EXISTS cpnav_navigation_pkey;
ALTER TABLE IF EXISTS ONLY public.cpnav_layout DROP CONSTRAINT IF EXISTS cpnav_layout_pkey;
ALTER TABLE IF EXISTS ONLY public.content DROP CONSTRAINT IF EXISTS content_pkey;
ALTER TABLE IF EXISTS ONLY public.changedfields DROP CONSTRAINT IF EXISTS changedfields_pkey;
ALTER TABLE IF EXISTS ONLY public.changedattributes DROP CONSTRAINT IF EXISTS changedattributes_pkey;
ALTER TABLE IF EXISTS ONLY public.categorygroups_sites DROP CONSTRAINT IF EXISTS categorygroups_sites_pkey;
ALTER TABLE IF EXISTS ONLY public.categorygroups DROP CONSTRAINT IF EXISTS categorygroups_pkey;
ALTER TABLE IF EXISTS ONLY public.categories DROP CONSTRAINT IF EXISTS categories_pkey;
ALTER TABLE IF EXISTS ONLY public.assettransforms DROP CONSTRAINT IF EXISTS assettransforms_pkey;
ALTER TABLE IF EXISTS ONLY public.assettransformindex DROP CONSTRAINT IF EXISTS assettransformindex_pkey;
ALTER TABLE IF EXISTS ONLY public.assets DROP CONSTRAINT IF EXISTS assets_pkey;
ALTER TABLE IF EXISTS ONLY public.assetindexdata DROP CONSTRAINT IF EXISTS assetindexdata_pkey;
ALTER TABLE IF EXISTS ONLY public.announcements DROP CONSTRAINT IF EXISTS announcements_pkey;
ALTER TABLE IF EXISTS public.widgets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.volumes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.volumefolders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.userpreferences ALTER COLUMN "userId" DROP DEFAULT;
ALTER TABLE IF EXISTS public.userpermissions_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.userpermissions_usergroups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.userpermissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.usergroups_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.usergroups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.templatecaches ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.templatecachequeries ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.templatecacheelements ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.taggroups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.systemmessages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.supertableblocktypes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.structures ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.structureelements ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.stc_socialnetworks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.snitch_collisions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.sites ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.sitegroups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.shunnedmessages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.sessions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.sections_sites ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.sections ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.revisions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.relations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.queue ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.plugins ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.navigation_navs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.matrixblocktypes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.info ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.gqltokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.gqlschemas ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.globalsets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.fields ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.fieldlayouttabs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.fieldlayouts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.fieldlayoutfields ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.fieldgroups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.entrytypes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.elements_sites ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.elements ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.elementindexsettings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.drafts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.deprecationerrors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.craftidtokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cpnav_pending_navigations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cpnav_navigation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cpnav_layout ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.content ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.categorygroups_sites ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.categorygroups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.assettransforms ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.assettransformindex ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.assetindexdata ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.announcements ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.widgets_id_seq;
DROP TABLE IF EXISTS public.widgets;
DROP SEQUENCE IF EXISTS public.volumes_id_seq;
DROP TABLE IF EXISTS public.volumes;
DROP SEQUENCE IF EXISTS public.volumefolders_id_seq;
DROP TABLE IF EXISTS public.volumefolders;
DROP TABLE IF EXISTS public.users;
DROP SEQUENCE IF EXISTS public."userpreferences_userId_seq";
DROP TABLE IF EXISTS public.userpreferences;
DROP SEQUENCE IF EXISTS public.userpermissions_users_id_seq;
DROP TABLE IF EXISTS public.userpermissions_users;
DROP SEQUENCE IF EXISTS public.userpermissions_usergroups_id_seq;
DROP TABLE IF EXISTS public.userpermissions_usergroups;
DROP SEQUENCE IF EXISTS public.userpermissions_id_seq;
DROP TABLE IF EXISTS public.userpermissions;
DROP SEQUENCE IF EXISTS public.usergroups_users_id_seq;
DROP TABLE IF EXISTS public.usergroups_users;
DROP SEQUENCE IF EXISTS public.usergroups_id_seq;
DROP TABLE IF EXISTS public.usergroups;
DROP SEQUENCE IF EXISTS public.tokens_id_seq;
DROP TABLE IF EXISTS public.tokens;
DROP SEQUENCE IF EXISTS public.templatecaches_id_seq;
DROP TABLE IF EXISTS public.templatecaches;
DROP SEQUENCE IF EXISTS public.templatecachequeries_id_seq;
DROP TABLE IF EXISTS public.templatecachequeries;
DROP SEQUENCE IF EXISTS public.templatecacheelements_id_seq;
DROP TABLE IF EXISTS public.templatecacheelements;
DROP TABLE IF EXISTS public.tags;
DROP SEQUENCE IF EXISTS public.taggroups_id_seq;
DROP TABLE IF EXISTS public.taggroups;
DROP SEQUENCE IF EXISTS public.systemmessages_id_seq;
DROP TABLE IF EXISTS public.systemmessages;
DROP SEQUENCE IF EXISTS public.supertableblocktypes_id_seq;
DROP TABLE IF EXISTS public.supertableblocktypes;
DROP TABLE IF EXISTS public.supertableblocks;
DROP SEQUENCE IF EXISTS public.structures_id_seq;
DROP TABLE IF EXISTS public.structures;
DROP SEQUENCE IF EXISTS public.structureelements_id_seq;
DROP TABLE IF EXISTS public.structureelements;
DROP SEQUENCE IF EXISTS public.stc_socialnetworks_id_seq;
DROP TABLE IF EXISTS public.stc_socialnetworks;
DROP SEQUENCE IF EXISTS public.snitch_collisions_id_seq;
DROP TABLE IF EXISTS public.snitch_collisions;
DROP SEQUENCE IF EXISTS public.sites_id_seq;
DROP TABLE IF EXISTS public.sites;
DROP SEQUENCE IF EXISTS public.sitegroups_id_seq;
DROP TABLE IF EXISTS public.sitegroups;
DROP SEQUENCE IF EXISTS public.shunnedmessages_id_seq;
DROP TABLE IF EXISTS public.shunnedmessages;
DROP SEQUENCE IF EXISTS public.sessions_id_seq;
DROP TABLE IF EXISTS public.sessions;
DROP TABLE IF EXISTS public.sequences;
DROP SEQUENCE IF EXISTS public.sections_sites_id_seq;
DROP TABLE IF EXISTS public.sections_sites;
DROP SEQUENCE IF EXISTS public.sections_id_seq;
DROP TABLE IF EXISTS public.sections;
DROP TABLE IF EXISTS public.searchindex;
DROP SEQUENCE IF EXISTS public.revisions_id_seq;
DROP TABLE IF EXISTS public.revisions;
DROP TABLE IF EXISTS public.resourcepaths;
DROP SEQUENCE IF EXISTS public.relations_id_seq;
DROP TABLE IF EXISTS public.relations;
DROP SEQUENCE IF EXISTS public.queue_id_seq;
DROP TABLE IF EXISTS public.queue;
DROP TABLE IF EXISTS public.projectconfig;
DROP SEQUENCE IF EXISTS public.plugins_id_seq;
DROP TABLE IF EXISTS public.plugins;
DROP TABLE IF EXISTS public.navigation_nodes;
DROP SEQUENCE IF EXISTS public.navigation_navs_id_seq;
DROP TABLE IF EXISTS public.navigation_navs;
DROP SEQUENCE IF EXISTS public.migrations_id_seq;
DROP TABLE IF EXISTS public.migrations;
DROP SEQUENCE IF EXISTS public.matrixblocktypes_id_seq;
DROP TABLE IF EXISTS public.matrixblocktypes;
DROP TABLE IF EXISTS public.matrixblocks;
DROP SEQUENCE IF EXISTS public.info_id_seq;
DROP TABLE IF EXISTS public.info;
DROP SEQUENCE IF EXISTS public.gqltokens_id_seq;
DROP TABLE IF EXISTS public.gqltokens;
DROP SEQUENCE IF EXISTS public.gqlschemas_id_seq;
DROP TABLE IF EXISTS public.gqlschemas;
DROP SEQUENCE IF EXISTS public.globalsets_id_seq;
DROP TABLE IF EXISTS public.globalsets;
DROP SEQUENCE IF EXISTS public.fields_id_seq;
DROP TABLE IF EXISTS public.fields;
DROP SEQUENCE IF EXISTS public.fieldlayouttabs_id_seq;
DROP TABLE IF EXISTS public.fieldlayouttabs;
DROP SEQUENCE IF EXISTS public.fieldlayouts_id_seq;
DROP TABLE IF EXISTS public.fieldlayouts;
DROP SEQUENCE IF EXISTS public.fieldlayoutfields_id_seq;
DROP TABLE IF EXISTS public.fieldlayoutfields;
DROP SEQUENCE IF EXISTS public.fieldgroups_id_seq;
DROP TABLE IF EXISTS public.fieldgroups;
DROP SEQUENCE IF EXISTS public.entrytypes_id_seq;
DROP TABLE IF EXISTS public.entrytypes;
DROP TABLE IF EXISTS public.entries;
DROP SEQUENCE IF EXISTS public.elements_sites_id_seq;
DROP TABLE IF EXISTS public.elements_sites;
DROP SEQUENCE IF EXISTS public.elements_id_seq;
DROP TABLE IF EXISTS public.elements;
DROP SEQUENCE IF EXISTS public.elementindexsettings_id_seq;
DROP TABLE IF EXISTS public.elementindexsettings;
DROP SEQUENCE IF EXISTS public.drafts_id_seq;
DROP TABLE IF EXISTS public.drafts;
DROP SEQUENCE IF EXISTS public.deprecationerrors_id_seq;
DROP TABLE IF EXISTS public.deprecationerrors;
DROP SEQUENCE IF EXISTS public.craftidtokens_id_seq;
DROP TABLE IF EXISTS public.craftidtokens;
DROP SEQUENCE IF EXISTS public.cpnav_pending_navigations_id_seq;
DROP TABLE IF EXISTS public.cpnav_pending_navigations;
DROP SEQUENCE IF EXISTS public.cpnav_navigation_id_seq;
DROP TABLE IF EXISTS public.cpnav_navigation;
DROP SEQUENCE IF EXISTS public.cpnav_layout_id_seq;
DROP TABLE IF EXISTS public.cpnav_layout;
DROP SEQUENCE IF EXISTS public.content_id_seq;
DROP TABLE IF EXISTS public.content;
DROP TABLE IF EXISTS public.changedfields;
DROP TABLE IF EXISTS public.changedattributes;
DROP SEQUENCE IF EXISTS public.categorygroups_sites_id_seq;
DROP TABLE IF EXISTS public.categorygroups_sites;
DROP SEQUENCE IF EXISTS public.categorygroups_id_seq;
DROP TABLE IF EXISTS public.categorygroups;
DROP TABLE IF EXISTS public.categories;
DROP SEQUENCE IF EXISTS public.assettransforms_id_seq;
DROP TABLE IF EXISTS public.assettransforms;
DROP SEQUENCE IF EXISTS public.assettransformindex_id_seq;
DROP TABLE IF EXISTS public.assettransformindex;
DROP TABLE IF EXISTS public.assets;
DROP SEQUENCE IF EXISTS public.assetindexdata_id_seq;
DROP TABLE IF EXISTS public.assetindexdata;
DROP SEQUENCE IF EXISTS public.announcements_id_seq;
DROP TABLE IF EXISTS public.announcements;
DROP SCHEMA IF EXISTS public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: announcements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.announcements (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "pluginId" integer,
    heading character varying(255) NOT NULL,
    body text NOT NULL,
    unread boolean DEFAULT true NOT NULL,
    "dateRead" timestamp(0) without time zone,
    "dateCreated" timestamp(0) without time zone NOT NULL
);


--
-- Name: announcements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.announcements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: announcements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.announcements_id_seq OWNED BY public.announcements.id;


--
-- Name: assetindexdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.assetindexdata (
    id integer NOT NULL,
    "sessionId" character varying(36) DEFAULT ''::character varying NOT NULL,
    "volumeId" integer NOT NULL,
    uri text,
    size bigint,
    "timestamp" timestamp(0) without time zone,
    "recordId" integer,
    "inProgress" boolean DEFAULT false,
    completed boolean DEFAULT false,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: assetindexdata_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.assetindexdata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assetindexdata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.assetindexdata_id_seq OWNED BY public.assetindexdata.id;


--
-- Name: assets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.assets (
    id integer NOT NULL,
    "volumeId" integer,
    "folderId" integer NOT NULL,
    "uploaderId" integer,
    filename character varying(255) NOT NULL,
    kind character varying(50) DEFAULT 'unknown'::character varying NOT NULL,
    width integer,
    height integer,
    size bigint,
    "focalPoint" character varying(13) DEFAULT NULL::character varying,
    "deletedWithVolume" boolean,
    "keptFile" boolean,
    "dateModified" timestamp(0) without time zone,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: assettransformindex; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.assettransformindex (
    id integer NOT NULL,
    "assetId" integer NOT NULL,
    filename character varying(255),
    format character varying(255),
    location character varying(255) NOT NULL,
    "volumeId" integer,
    "fileExists" boolean DEFAULT false NOT NULL,
    "inProgress" boolean DEFAULT false NOT NULL,
    error boolean DEFAULT false NOT NULL,
    "dateIndexed" timestamp(0) without time zone,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: assettransformindex_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.assettransformindex_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assettransformindex_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.assettransformindex_id_seq OWNED BY public.assettransformindex.id;


--
-- Name: assettransforms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.assettransforms (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    mode character varying(255) DEFAULT 'crop'::character varying NOT NULL,
    "position" character varying(255) DEFAULT 'center-center'::character varying NOT NULL,
    width integer,
    height integer,
    format character varying(255),
    quality integer,
    interlace character varying(255) DEFAULT 'none'::character varying NOT NULL,
    "dimensionChangeTime" timestamp(0) without time zone,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL,
    CONSTRAINT assettransforms_interlace_check CHECK (((interlace)::text = ANY ((ARRAY['none'::character varying, 'line'::character varying, 'plane'::character varying, 'partition'::character varying])::text[]))),
    CONSTRAINT assettransforms_mode_check CHECK (((mode)::text = ANY ((ARRAY['stretch'::character varying, 'fit'::character varying, 'crop'::character varying])::text[]))),
    CONSTRAINT assettransforms_position_check CHECK ((("position")::text = ANY ((ARRAY['top-left'::character varying, 'top-center'::character varying, 'top-right'::character varying, 'center-left'::character varying, 'center-center'::character varying, 'center-right'::character varying, 'bottom-left'::character varying, 'bottom-center'::character varying, 'bottom-right'::character varying])::text[])))
);


--
-- Name: assettransforms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.assettransforms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assettransforms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.assettransforms_id_seq OWNED BY public.assettransforms.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    "groupId" integer NOT NULL,
    "parentId" integer,
    "deletedWithGroup" boolean,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: categorygroups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categorygroups (
    id integer NOT NULL,
    "structureId" integer NOT NULL,
    "fieldLayoutId" integer,
    name character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    "defaultPlacement" character varying(255) DEFAULT 'end'::character varying NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    "dateDeleted" timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    uid character(36) DEFAULT '0'::bpchar NOT NULL,
    CONSTRAINT "categorygroups_defaultPlacement_check" CHECK ((("defaultPlacement")::text = ANY ((ARRAY['beginning'::character varying, 'end'::character varying])::text[])))
);


--
-- Name: categorygroups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.categorygroups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: categorygroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.categorygroups_id_seq OWNED BY public.categorygroups.id;


--
-- Name: categorygroups_sites; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categorygroups_sites (
    id integer NOT NULL,
    "groupId" integer NOT NULL,
    "siteId" integer NOT NULL,
    "hasUrls" boolean DEFAULT true NOT NULL,
    "uriFormat" text,
    template character varying(500),
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: categorygroups_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.categorygroups_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: categorygroups_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.categorygroups_sites_id_seq OWNED BY public.categorygroups_sites.id;


--
-- Name: changedattributes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.changedattributes (
    "elementId" integer NOT NULL,
    "siteId" integer NOT NULL,
    attribute character varying(255) NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    propagated boolean NOT NULL,
    "userId" integer
);


--
-- Name: changedfields; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.changedfields (
    "elementId" integer NOT NULL,
    "siteId" integer NOT NULL,
    "fieldId" integer NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    propagated boolean NOT NULL,
    "userId" integer
);


--
-- Name: content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.content (
    id integer NOT NULL,
    "elementId" integer NOT NULL,
    "siteId" integer NOT NULL,
    title character varying(255),
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL,
    "field_primaryEmailAddress_cpisbmwq" character varying(255),
    "field_altText_wsbceffg" text
);


--
-- Name: content_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.content_id_seq OWNED BY public.content.id;


--
-- Name: cpnav_layout; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cpnav_layout (
    id integer NOT NULL,
    name character varying(255),
    "isDefault" boolean DEFAULT false NOT NULL,
    permissions text,
    "sortOrder" smallint,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: cpnav_layout_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cpnav_layout_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cpnav_layout_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cpnav_layout_id_seq OWNED BY public.cpnav_layout.id;


--
-- Name: cpnav_navigation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cpnav_navigation (
    id integer NOT NULL,
    "layoutId" integer NOT NULL,
    handle character varying(255),
    "prevLabel" character varying(255),
    "currLabel" character varying(255),
    enabled boolean DEFAULT true NOT NULL,
    "order" integer DEFAULT 0,
    "prevUrl" character varying(255),
    url character varying(255),
    icon character varying(255),
    "customIcon" character varying(255),
    type character varying(255),
    "newWindow" boolean DEFAULT false NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: cpnav_navigation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cpnav_navigation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cpnav_navigation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cpnav_navigation_id_seq OWNED BY public.cpnav_navigation.id;


--
-- Name: cpnav_pending_navigations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cpnav_pending_navigations (
    id integer NOT NULL,
    "pluginNavItem" text,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: cpnav_pending_navigations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cpnav_pending_navigations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cpnav_pending_navigations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cpnav_pending_navigations_id_seq OWNED BY public.cpnav_pending_navigations.id;


--
-- Name: craftidtokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.craftidtokens (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "accessToken" text NOT NULL,
    "expiryDate" timestamp(0) without time zone,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: craftidtokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.craftidtokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: craftidtokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.craftidtokens_id_seq OWNED BY public.craftidtokens.id;


--
-- Name: deprecationerrors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.deprecationerrors (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    fingerprint character varying(255) NOT NULL,
    "lastOccurrence" timestamp(0) without time zone NOT NULL,
    file character varying(255) NOT NULL,
    line smallint,
    message text,
    traces text,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: deprecationerrors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.deprecationerrors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: deprecationerrors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.deprecationerrors_id_seq OWNED BY public.deprecationerrors.id;


--
-- Name: drafts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.drafts (
    id integer NOT NULL,
    "sourceId" integer,
    "creatorId" integer,
    provisional boolean DEFAULT false NOT NULL,
    name character varying(255) NOT NULL,
    notes text,
    "trackChanges" boolean DEFAULT false NOT NULL,
    "dateLastMerged" timestamp(0) without time zone,
    saved boolean DEFAULT true NOT NULL
);


--
-- Name: drafts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.drafts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: drafts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.drafts_id_seq OWNED BY public.drafts.id;


--
-- Name: elementindexsettings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elementindexsettings (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    settings text,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: elementindexsettings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.elementindexsettings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: elementindexsettings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.elementindexsettings_id_seq OWNED BY public.elementindexsettings.id;


--
-- Name: elements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elements (
    id integer NOT NULL,
    "canonicalId" integer,
    "draftId" integer,
    "revisionId" integer,
    "fieldLayoutId" integer,
    type character varying(255) NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    archived boolean DEFAULT false NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    "dateLastMerged" timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    "dateDeleted" timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: elements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.elements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: elements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.elements_id_seq OWNED BY public.elements.id;


--
-- Name: elements_sites; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elements_sites (
    id integer NOT NULL,
    "elementId" integer NOT NULL,
    "siteId" integer NOT NULL,
    slug character varying(255),
    uri character varying(255),
    enabled boolean DEFAULT true NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: elements_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.elements_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: elements_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.elements_sites_id_seq OWNED BY public.elements_sites.id;


--
-- Name: entries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.entries (
    id integer NOT NULL,
    "sectionId" integer NOT NULL,
    "parentId" integer,
    "typeId" integer NOT NULL,
    "authorId" integer,
    "postDate" timestamp(0) without time zone,
    "expiryDate" timestamp(0) without time zone,
    "deletedWithEntryType" boolean,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: entrytypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.entrytypes (
    id integer NOT NULL,
    "sectionId" integer NOT NULL,
    "fieldLayoutId" integer,
    name character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    "hasTitleField" boolean DEFAULT true NOT NULL,
    "titleTranslationMethod" character varying(255) DEFAULT 'site'::character varying NOT NULL,
    "titleTranslationKeyFormat" text,
    "titleFormat" character varying(255),
    "sortOrder" smallint,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    "dateDeleted" timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: entrytypes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.entrytypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: entrytypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.entrytypes_id_seq OWNED BY public.entrytypes.id;


--
-- Name: fieldgroups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fieldgroups (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    "dateDeleted" timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: fieldgroups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fieldgroups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fieldgroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fieldgroups_id_seq OWNED BY public.fieldgroups.id;


--
-- Name: fieldlayoutfields; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fieldlayoutfields (
    id integer NOT NULL,
    "layoutId" integer NOT NULL,
    "tabId" integer NOT NULL,
    "fieldId" integer NOT NULL,
    required boolean DEFAULT false NOT NULL,
    "sortOrder" smallint,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: fieldlayoutfields_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fieldlayoutfields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fieldlayoutfields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fieldlayoutfields_id_seq OWNED BY public.fieldlayoutfields.id;


--
-- Name: fieldlayouts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fieldlayouts (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    "dateDeleted" timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: fieldlayouts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fieldlayouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fieldlayouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fieldlayouts_id_seq OWNED BY public.fieldlayouts.id;


--
-- Name: fieldlayouttabs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fieldlayouttabs (
    id integer NOT NULL,
    "layoutId" integer NOT NULL,
    name character varying(255) NOT NULL,
    elements text,
    "sortOrder" smallint,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: fieldlayouttabs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fieldlayouttabs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fieldlayouttabs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fieldlayouttabs_id_seq OWNED BY public.fieldlayouttabs.id;


--
-- Name: fields; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fields (
    id integer NOT NULL,
    "groupId" integer,
    name character varying(255) NOT NULL,
    handle character varying(64) NOT NULL,
    context character varying(255) DEFAULT 'global'::character varying NOT NULL,
    "columnSuffix" character(8),
    instructions text,
    searchable boolean DEFAULT true NOT NULL,
    "translationMethod" character varying(255) DEFAULT 'none'::character varying NOT NULL,
    "translationKeyFormat" text,
    type character varying(255) NOT NULL,
    settings text,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: fields_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fields_id_seq OWNED BY public.fields.id;


--
-- Name: globalsets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.globalsets (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    "fieldLayoutId" integer,
    "sortOrder" smallint,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: globalsets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.globalsets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: globalsets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.globalsets_id_seq OWNED BY public.globalsets.id;


--
-- Name: gqlschemas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gqlschemas (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    scope text,
    "isPublic" boolean DEFAULT false NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: gqlschemas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.gqlschemas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gqlschemas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.gqlschemas_id_seq OWNED BY public.gqlschemas.id;


--
-- Name: gqltokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gqltokens (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "accessToken" character varying(255) NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    "expiryDate" timestamp(0) without time zone,
    "lastUsed" timestamp(0) without time zone,
    "schemaId" integer,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: gqltokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.gqltokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gqltokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.gqltokens_id_seq OWNED BY public.gqltokens.id;


--
-- Name: info; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.info (
    id integer NOT NULL,
    version character varying(50) NOT NULL,
    "schemaVersion" character varying(15) NOT NULL,
    maintenance boolean DEFAULT false NOT NULL,
    "configVersion" character(12) DEFAULT '000000000000'::bpchar NOT NULL,
    "fieldVersion" character(12) DEFAULT '000000000000'::bpchar NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: info_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.info_id_seq OWNED BY public.info.id;


--
-- Name: matrixblocks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.matrixblocks (
    id integer NOT NULL,
    "ownerId" integer NOT NULL,
    "fieldId" integer NOT NULL,
    "typeId" integer NOT NULL,
    "sortOrder" smallint,
    "deletedWithOwner" boolean,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: matrixblocktypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.matrixblocktypes (
    id integer NOT NULL,
    "fieldId" integer NOT NULL,
    "fieldLayoutId" integer,
    name character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    "sortOrder" smallint,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: matrixblocktypes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.matrixblocktypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: matrixblocktypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.matrixblocktypes_id_seq OWNED BY public.matrixblocktypes.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    track character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "applyTime" timestamp(0) without time zone NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: navigation_navs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.navigation_navs (
    id integer NOT NULL,
    "structureId" integer NOT NULL,
    name character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    instructions text,
    "sortOrder" smallint,
    "propagateNodes" boolean DEFAULT false,
    "maxNodes" integer,
    permissions text,
    "siteSettings" text,
    "fieldLayoutId" integer,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    "dateDeleted" timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: navigation_navs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.navigation_navs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: navigation_navs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.navigation_navs_id_seq OWNED BY public.navigation_navs.id;


--
-- Name: navigation_nodes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.navigation_nodes (
    id integer NOT NULL,
    "elementId" integer,
    "navId" integer NOT NULL,
    "parentId" integer,
    url character varying(255),
    type character varying(255),
    classes character varying(255),
    "urlSuffix" character varying(255),
    "customAttributes" text,
    data text,
    "newWindow" boolean DEFAULT false,
    "deletedWithNav" boolean,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: plugins; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.plugins (
    id integer NOT NULL,
    handle character varying(255) NOT NULL,
    version character varying(255) NOT NULL,
    "schemaVersion" character varying(255) NOT NULL,
    "licenseKeyStatus" character varying(255) DEFAULT 'unknown'::character varying NOT NULL,
    "licensedEdition" character varying(255),
    "installDate" timestamp(0) without time zone NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL,
    CONSTRAINT "plugins_licenseKeyStatus_check" CHECK ((("licenseKeyStatus")::text = ANY ((ARRAY['valid'::character varying, 'trial'::character varying, 'invalid'::character varying, 'mismatched'::character varying, 'astray'::character varying, 'unknown'::character varying])::text[])))
);


--
-- Name: plugins_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.plugins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: plugins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.plugins_id_seq OWNED BY public.plugins.id;


--
-- Name: projectconfig; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projectconfig (
    path character varying(255) NOT NULL,
    value text NOT NULL
);


--
-- Name: queue; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.queue (
    id integer NOT NULL,
    channel character varying(255) DEFAULT 'queue'::character varying NOT NULL,
    job bytea NOT NULL,
    description text,
    "timePushed" integer NOT NULL,
    ttr integer NOT NULL,
    delay integer DEFAULT 0 NOT NULL,
    priority integer DEFAULT 1024 NOT NULL,
    "dateReserved" timestamp(0) without time zone,
    "timeUpdated" integer,
    progress smallint DEFAULT 0 NOT NULL,
    "progressLabel" character varying(255),
    attempt integer,
    fail boolean DEFAULT false,
    "dateFailed" timestamp(0) without time zone,
    error text
);


--
-- Name: queue_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.queue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: queue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.queue_id_seq OWNED BY public.queue.id;


--
-- Name: relations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.relations (
    id integer NOT NULL,
    "fieldId" integer NOT NULL,
    "sourceId" integer NOT NULL,
    "sourceSiteId" integer,
    "targetId" integer NOT NULL,
    "sortOrder" smallint,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: relations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.relations_id_seq OWNED BY public.relations.id;


--
-- Name: resourcepaths; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.resourcepaths (
    hash character varying(255) NOT NULL,
    path character varying(255) NOT NULL
);


--
-- Name: revisions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.revisions (
    id integer NOT NULL,
    "sourceId" integer NOT NULL,
    "creatorId" integer,
    num integer NOT NULL,
    notes text
);


--
-- Name: revisions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.revisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: revisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.revisions_id_seq OWNED BY public.revisions.id;


--
-- Name: searchindex; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.searchindex (
    "elementId" integer NOT NULL,
    attribute character varying(25) NOT NULL,
    "fieldId" integer NOT NULL,
    "siteId" integer NOT NULL,
    keywords text NOT NULL,
    keywords_vector tsvector NOT NULL
);


--
-- Name: sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sections (
    id integer NOT NULL,
    "structureId" integer,
    name character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    type character varying(255) DEFAULT 'channel'::character varying NOT NULL,
    "enableVersioning" boolean DEFAULT false NOT NULL,
    "propagationMethod" character varying(255) DEFAULT 'all'::character varying NOT NULL,
    "defaultPlacement" character varying(255) DEFAULT 'end'::character varying NOT NULL,
    "previewTargets" text,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    "dateDeleted" timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    uid character(36) DEFAULT '0'::bpchar NOT NULL,
    CONSTRAINT "sections_defaultPlacement_check" CHECK ((("defaultPlacement")::text = ANY ((ARRAY['beginning'::character varying, 'end'::character varying])::text[]))),
    CONSTRAINT sections_type_check CHECK (((type)::text = ANY ((ARRAY['single'::character varying, 'channel'::character varying, 'structure'::character varying])::text[])))
);


--
-- Name: sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sections_id_seq OWNED BY public.sections.id;


--
-- Name: sections_sites; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sections_sites (
    id integer NOT NULL,
    "sectionId" integer NOT NULL,
    "siteId" integer NOT NULL,
    "hasUrls" boolean DEFAULT true NOT NULL,
    "uriFormat" text,
    template character varying(500),
    "enabledByDefault" boolean DEFAULT true NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: sections_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sections_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sections_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sections_sites_id_seq OWNED BY public.sections_sites.id;


--
-- Name: sequences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sequences (
    name character varying(255) NOT NULL,
    next integer DEFAULT 1 NOT NULL
);


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token character(100) NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: shunnedmessages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shunnedmessages (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    message character varying(255) NOT NULL,
    "expiryDate" timestamp(0) without time zone,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: shunnedmessages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shunnedmessages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shunnedmessages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shunnedmessages_id_seq OWNED BY public.shunnedmessages.id;


--
-- Name: sitegroups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sitegroups (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    "dateDeleted" timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: sitegroups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sitegroups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sitegroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sitegroups_id_seq OWNED BY public.sitegroups.id;


--
-- Name: sites; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sites (
    id integer NOT NULL,
    "groupId" integer NOT NULL,
    "primary" boolean NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    name character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    language character varying(12) NOT NULL,
    "hasUrls" boolean DEFAULT false NOT NULL,
    "baseUrl" character varying(255),
    "sortOrder" smallint,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    "dateDeleted" timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: sites_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sites_id_seq OWNED BY public.sites.id;


--
-- Name: snitch_collisions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.snitch_collisions (
    id integer NOT NULL,
    "snitchId" integer NOT NULL,
    "snitchType" character varying(255),
    "userId" integer NOT NULL,
    "whenEntered" timestamp(0) without time zone NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: snitch_collisions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.snitch_collisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: snitch_collisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.snitch_collisions_id_seq OWNED BY public.snitch_collisions.id;


--
-- Name: stc_socialnetworks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stc_socialnetworks (
    id integer NOT NULL,
    "elementId" integer NOT NULL,
    "siteId" integer NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL,
    "field_accountUrl_yefrdgxi" character varying(255),
    field_network_sfvypyqo character varying(255)
);


--
-- Name: stc_socialnetworks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.stc_socialnetworks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: stc_socialnetworks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.stc_socialnetworks_id_seq OWNED BY public.stc_socialnetworks.id;


--
-- Name: structureelements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.structureelements (
    id integer NOT NULL,
    "structureId" integer NOT NULL,
    "elementId" integer,
    root integer,
    lft integer NOT NULL,
    rgt integer NOT NULL,
    level smallint NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: structureelements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.structureelements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: structureelements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.structureelements_id_seq OWNED BY public.structureelements.id;


--
-- Name: structures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.structures (
    id integer NOT NULL,
    "maxLevels" smallint,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    "dateDeleted" timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: structures_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.structures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: structures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.structures_id_seq OWNED BY public.structures.id;


--
-- Name: supertableblocks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.supertableblocks (
    id integer NOT NULL,
    "ownerId" integer NOT NULL,
    "fieldId" integer NOT NULL,
    "typeId" integer NOT NULL,
    "sortOrder" smallint,
    "deletedWithOwner" boolean,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: supertableblocktypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.supertableblocktypes (
    id integer NOT NULL,
    "fieldId" integer NOT NULL,
    "fieldLayoutId" integer,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: supertableblocktypes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.supertableblocktypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: supertableblocktypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.supertableblocktypes_id_seq OWNED BY public.supertableblocktypes.id;


--
-- Name: systemmessages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.systemmessages (
    id integer NOT NULL,
    language character varying(255) NOT NULL,
    key character varying(255) NOT NULL,
    subject text NOT NULL,
    body text NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: systemmessages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.systemmessages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: systemmessages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.systemmessages_id_seq OWNED BY public.systemmessages.id;


--
-- Name: taggroups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.taggroups (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    "fieldLayoutId" integer,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    "dateDeleted" timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: taggroups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.taggroups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: taggroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.taggroups_id_seq OWNED BY public.taggroups.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    "groupId" integer NOT NULL,
    "deletedWithGroup" boolean,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: templatecacheelements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.templatecacheelements (
    id integer NOT NULL,
    "cacheId" integer NOT NULL,
    "elementId" integer NOT NULL
);


--
-- Name: templatecacheelements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.templatecacheelements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: templatecacheelements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.templatecacheelements_id_seq OWNED BY public.templatecacheelements.id;


--
-- Name: templatecachequeries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.templatecachequeries (
    id integer NOT NULL,
    "cacheId" integer NOT NULL,
    type character varying(255) NOT NULL,
    query text NOT NULL
);


--
-- Name: templatecachequeries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.templatecachequeries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: templatecachequeries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.templatecachequeries_id_seq OWNED BY public.templatecachequeries.id;


--
-- Name: templatecaches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.templatecaches (
    id integer NOT NULL,
    "siteId" integer NOT NULL,
    "cacheKey" character varying(255) NOT NULL,
    path character varying(255),
    "expiryDate" timestamp(0) without time zone NOT NULL,
    body text NOT NULL
);


--
-- Name: templatecaches_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.templatecaches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: templatecaches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.templatecaches_id_seq OWNED BY public.templatecaches.id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tokens (
    id integer NOT NULL,
    token character(32) NOT NULL,
    route text,
    "usageLimit" smallint,
    "usageCount" smallint,
    "expiryDate" timestamp(0) without time zone NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;


--
-- Name: usergroups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usergroups (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    description text,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: usergroups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.usergroups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: usergroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.usergroups_id_seq OWNED BY public.usergroups.id;


--
-- Name: usergroups_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usergroups_users (
    id integer NOT NULL,
    "groupId" integer NOT NULL,
    "userId" integer NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: usergroups_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.usergroups_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: usergroups_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.usergroups_users_id_seq OWNED BY public.usergroups_users.id;


--
-- Name: userpermissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.userpermissions (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: userpermissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.userpermissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: userpermissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.userpermissions_id_seq OWNED BY public.userpermissions.id;


--
-- Name: userpermissions_usergroups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.userpermissions_usergroups (
    id integer NOT NULL,
    "permissionId" integer NOT NULL,
    "groupId" integer NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: userpermissions_usergroups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.userpermissions_usergroups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: userpermissions_usergroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.userpermissions_usergroups_id_seq OWNED BY public.userpermissions_usergroups.id;


--
-- Name: userpermissions_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.userpermissions_users (
    id integer NOT NULL,
    "permissionId" integer NOT NULL,
    "userId" integer NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: userpermissions_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.userpermissions_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: userpermissions_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.userpermissions_users_id_seq OWNED BY public.userpermissions_users.id;


--
-- Name: userpreferences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.userpreferences (
    "userId" integer NOT NULL,
    preferences text
);


--
-- Name: userpreferences_userId_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."userpreferences_userId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: userpreferences_userId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."userpreferences_userId_seq" OWNED BY public.userpreferences."userId";


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(100) NOT NULL,
    "photoId" integer,
    "firstName" character varying(100),
    "lastName" character varying(100),
    email character varying(255) NOT NULL,
    password character varying(255),
    admin boolean DEFAULT false NOT NULL,
    locked boolean DEFAULT false NOT NULL,
    suspended boolean DEFAULT false NOT NULL,
    pending boolean DEFAULT false NOT NULL,
    "lastLoginDate" timestamp(0) without time zone,
    "lastLoginAttemptIp" character varying(45),
    "invalidLoginWindowStart" timestamp(0) without time zone,
    "invalidLoginCount" smallint,
    "lastInvalidLoginDate" timestamp(0) without time zone,
    "lockoutDate" timestamp(0) without time zone,
    "hasDashboard" boolean DEFAULT false NOT NULL,
    "verificationCode" character varying(255),
    "verificationCodeIssuedDate" timestamp(0) without time zone,
    "unverifiedEmail" character varying(255),
    "passwordResetRequired" boolean DEFAULT false NOT NULL,
    "lastPasswordChangeDate" timestamp(0) without time zone,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: volumefolders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.volumefolders (
    id integer NOT NULL,
    "parentId" integer,
    "volumeId" integer,
    name character varying(255) NOT NULL,
    path character varying(255),
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: volumefolders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.volumefolders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: volumefolders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.volumefolders_id_seq OWNED BY public.volumefolders.id;


--
-- Name: volumes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.volumes (
    id integer NOT NULL,
    "fieldLayoutId" integer,
    name character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    "hasUrls" boolean DEFAULT true NOT NULL,
    url character varying(255),
    "titleTranslationMethod" character varying(255) DEFAULT 'site'::character varying NOT NULL,
    "titleTranslationKeyFormat" text,
    settings text,
    "sortOrder" smallint,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    "dateDeleted" timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: volumes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.volumes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: volumes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.volumes_id_seq OWNED BY public.volumes.id;


--
-- Name: widgets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.widgets (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    type character varying(255) NOT NULL,
    "sortOrder" smallint,
    colspan smallint,
    settings text,
    enabled boolean DEFAULT true NOT NULL,
    "dateCreated" timestamp(0) without time zone NOT NULL,
    "dateUpdated" timestamp(0) without time zone NOT NULL,
    uid character(36) DEFAULT '0'::bpchar NOT NULL
);


--
-- Name: widgets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.widgets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: widgets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.widgets_id_seq OWNED BY public.widgets.id;


--
-- Name: announcements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.announcements ALTER COLUMN id SET DEFAULT nextval('public.announcements_id_seq'::regclass);


--
-- Name: assetindexdata id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assetindexdata ALTER COLUMN id SET DEFAULT nextval('public.assetindexdata_id_seq'::regclass);


--
-- Name: assettransformindex id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assettransformindex ALTER COLUMN id SET DEFAULT nextval('public.assettransformindex_id_seq'::regclass);


--
-- Name: assettransforms id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assettransforms ALTER COLUMN id SET DEFAULT nextval('public.assettransforms_id_seq'::regclass);


--
-- Name: categorygroups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorygroups ALTER COLUMN id SET DEFAULT nextval('public.categorygroups_id_seq'::regclass);


--
-- Name: categorygroups_sites id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorygroups_sites ALTER COLUMN id SET DEFAULT nextval('public.categorygroups_sites_id_seq'::regclass);


--
-- Name: content id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content ALTER COLUMN id SET DEFAULT nextval('public.content_id_seq'::regclass);


--
-- Name: cpnav_layout id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cpnav_layout ALTER COLUMN id SET DEFAULT nextval('public.cpnav_layout_id_seq'::regclass);


--
-- Name: cpnav_navigation id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cpnav_navigation ALTER COLUMN id SET DEFAULT nextval('public.cpnav_navigation_id_seq'::regclass);


--
-- Name: cpnav_pending_navigations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cpnav_pending_navigations ALTER COLUMN id SET DEFAULT nextval('public.cpnav_pending_navigations_id_seq'::regclass);


--
-- Name: craftidtokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.craftidtokens ALTER COLUMN id SET DEFAULT nextval('public.craftidtokens_id_seq'::regclass);


--
-- Name: deprecationerrors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deprecationerrors ALTER COLUMN id SET DEFAULT nextval('public.deprecationerrors_id_seq'::regclass);


--
-- Name: drafts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.drafts ALTER COLUMN id SET DEFAULT nextval('public.drafts_id_seq'::regclass);


--
-- Name: elementindexsettings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elementindexsettings ALTER COLUMN id SET DEFAULT nextval('public.elementindexsettings_id_seq'::regclass);


--
-- Name: elements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elements ALTER COLUMN id SET DEFAULT nextval('public.elements_id_seq'::regclass);


--
-- Name: elements_sites id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elements_sites ALTER COLUMN id SET DEFAULT nextval('public.elements_sites_id_seq'::regclass);


--
-- Name: entrytypes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entrytypes ALTER COLUMN id SET DEFAULT nextval('public.entrytypes_id_seq'::regclass);


--
-- Name: fieldgroups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fieldgroups ALTER COLUMN id SET DEFAULT nextval('public.fieldgroups_id_seq'::regclass);


--
-- Name: fieldlayoutfields id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fieldlayoutfields ALTER COLUMN id SET DEFAULT nextval('public.fieldlayoutfields_id_seq'::regclass);


--
-- Name: fieldlayouts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fieldlayouts ALTER COLUMN id SET DEFAULT nextval('public.fieldlayouts_id_seq'::regclass);


--
-- Name: fieldlayouttabs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fieldlayouttabs ALTER COLUMN id SET DEFAULT nextval('public.fieldlayouttabs_id_seq'::regclass);


--
-- Name: fields id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fields ALTER COLUMN id SET DEFAULT nextval('public.fields_id_seq'::regclass);


--
-- Name: globalsets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.globalsets ALTER COLUMN id SET DEFAULT nextval('public.globalsets_id_seq'::regclass);


--
-- Name: gqlschemas id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gqlschemas ALTER COLUMN id SET DEFAULT nextval('public.gqlschemas_id_seq'::regclass);


--
-- Name: gqltokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gqltokens ALTER COLUMN id SET DEFAULT nextval('public.gqltokens_id_seq'::regclass);


--
-- Name: info id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.info ALTER COLUMN id SET DEFAULT nextval('public.info_id_seq'::regclass);


--
-- Name: matrixblocktypes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matrixblocktypes ALTER COLUMN id SET DEFAULT nextval('public.matrixblocktypes_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: navigation_navs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigation_navs ALTER COLUMN id SET DEFAULT nextval('public.navigation_navs_id_seq'::regclass);


--
-- Name: plugins id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plugins ALTER COLUMN id SET DEFAULT nextval('public.plugins_id_seq'::regclass);


--
-- Name: queue id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.queue ALTER COLUMN id SET DEFAULT nextval('public.queue_id_seq'::regclass);


--
-- Name: relations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.relations ALTER COLUMN id SET DEFAULT nextval('public.relations_id_seq'::regclass);


--
-- Name: revisions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.revisions ALTER COLUMN id SET DEFAULT nextval('public.revisions_id_seq'::regclass);


--
-- Name: sections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sections ALTER COLUMN id SET DEFAULT nextval('public.sections_id_seq'::regclass);


--
-- Name: sections_sites id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sections_sites ALTER COLUMN id SET DEFAULT nextval('public.sections_sites_id_seq'::regclass);


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Name: shunnedmessages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shunnedmessages ALTER COLUMN id SET DEFAULT nextval('public.shunnedmessages_id_seq'::regclass);


--
-- Name: sitegroups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sitegroups ALTER COLUMN id SET DEFAULT nextval('public.sitegroups_id_seq'::regclass);


--
-- Name: sites id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sites ALTER COLUMN id SET DEFAULT nextval('public.sites_id_seq'::regclass);


--
-- Name: snitch_collisions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.snitch_collisions ALTER COLUMN id SET DEFAULT nextval('public.snitch_collisions_id_seq'::regclass);


--
-- Name: stc_socialnetworks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stc_socialnetworks ALTER COLUMN id SET DEFAULT nextval('public.stc_socialnetworks_id_seq'::regclass);


--
-- Name: structureelements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.structureelements ALTER COLUMN id SET DEFAULT nextval('public.structureelements_id_seq'::regclass);


--
-- Name: structures id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.structures ALTER COLUMN id SET DEFAULT nextval('public.structures_id_seq'::regclass);


--
-- Name: supertableblocktypes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supertableblocktypes ALTER COLUMN id SET DEFAULT nextval('public.supertableblocktypes_id_seq'::regclass);


--
-- Name: systemmessages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.systemmessages ALTER COLUMN id SET DEFAULT nextval('public.systemmessages_id_seq'::regclass);


--
-- Name: taggroups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggroups ALTER COLUMN id SET DEFAULT nextval('public.taggroups_id_seq'::regclass);


--
-- Name: templatecacheelements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.templatecacheelements ALTER COLUMN id SET DEFAULT nextval('public.templatecacheelements_id_seq'::regclass);


--
-- Name: templatecachequeries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.templatecachequeries ALTER COLUMN id SET DEFAULT nextval('public.templatecachequeries_id_seq'::regclass);


--
-- Name: templatecaches id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.templatecaches ALTER COLUMN id SET DEFAULT nextval('public.templatecaches_id_seq'::regclass);


--
-- Name: tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);


--
-- Name: usergroups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usergroups ALTER COLUMN id SET DEFAULT nextval('public.usergroups_id_seq'::regclass);


--
-- Name: usergroups_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usergroups_users ALTER COLUMN id SET DEFAULT nextval('public.usergroups_users_id_seq'::regclass);


--
-- Name: userpermissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userpermissions ALTER COLUMN id SET DEFAULT nextval('public.userpermissions_id_seq'::regclass);


--
-- Name: userpermissions_usergroups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userpermissions_usergroups ALTER COLUMN id SET DEFAULT nextval('public.userpermissions_usergroups_id_seq'::regclass);


--
-- Name: userpermissions_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userpermissions_users ALTER COLUMN id SET DEFAULT nextval('public.userpermissions_users_id_seq'::regclass);


--
-- Name: userpreferences userId; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userpreferences ALTER COLUMN "userId" SET DEFAULT nextval('public."userpreferences_userId_seq"'::regclass);


--
-- Name: volumefolders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.volumefolders ALTER COLUMN id SET DEFAULT nextval('public.volumefolders_id_seq'::regclass);


--
-- Name: volumes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.volumes ALTER COLUMN id SET DEFAULT nextval('public.volumes_id_seq'::regclass);


--
-- Name: widgets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.widgets ALTER COLUMN id SET DEFAULT nextval('public.widgets_id_seq'::regclass);


--
-- Data for Name: announcements; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: assets; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.assets (id, "volumeId", "folderId", "uploaderId", filename, kind, width, height, size, "focalPoint", "deletedWithVolume", "keptFile", "dateModified", "dateCreated", "dateUpdated", uid) VALUES (14, 1, 4, NULL, 'photo-1224458949.jpg', 'image', 4450, 3337, 999601, NULL, false, false, '2022-02-27 12:11:23', '2022-02-27 12:11:23', '2022-02-27 12:11:23', 'a99d1fa2-6bb3-4bf6-baef-c4e3e88ab6b3');


--
-- Data for Name: assettransforms; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: categorygroups; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: categorygroups_sites; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: changedattributes; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.changedattributes ("elementId", "siteId", attribute, "dateUpdated", propagated, "userId") VALUES (2, 2, 'title', '2022-02-27 10:31:59', true, 1);
INSERT INTO public.changedattributes ("elementId", "siteId", attribute, "dateUpdated", propagated, "userId") VALUES (2, 1, 'title', '2022-02-27 10:31:59', false, 1);
INSERT INTO public.changedattributes ("elementId", "siteId", attribute, "dateUpdated", propagated, "userId") VALUES (2, 2, 'slug', '2022-02-27 10:32:02', true, 1);
INSERT INTO public.changedattributes ("elementId", "siteId", attribute, "dateUpdated", propagated, "userId") VALUES (2, 2, 'uri', '2022-02-27 10:32:02', true, 1);
INSERT INTO public.changedattributes ("elementId", "siteId", attribute, "dateUpdated", propagated, "userId") VALUES (2, 1, 'slug', '2022-02-27 10:32:02', false, 1);
INSERT INTO public.changedattributes ("elementId", "siteId", attribute, "dateUpdated", propagated, "userId") VALUES (2, 1, 'uri', '2022-02-27 10:32:02', false, 1);
INSERT INTO public.changedattributes ("elementId", "siteId", attribute, "dateUpdated", propagated, "userId") VALUES (5, 2, 'slug', '2022-02-27 11:03:09', false, 1);
INSERT INTO public.changedattributes ("elementId", "siteId", attribute, "dateUpdated", propagated, "userId") VALUES (5, 2, 'uri', '2022-02-27 11:03:09', false, 1);
INSERT INTO public.changedattributes ("elementId", "siteId", attribute, "dateUpdated", propagated, "userId") VALUES (5, 2, 'title', '2022-02-27 11:03:09', false, 1);
INSERT INTO public.changedattributes ("elementId", "siteId", attribute, "dateUpdated", propagated, "userId") VALUES (7, 2, 'title', '2022-02-27 11:03:33', false, 1);
INSERT INTO public.changedattributes ("elementId", "siteId", attribute, "dateUpdated", propagated, "userId") VALUES (7, 2, 'slug', '2022-02-27 11:03:33', false, 1);


--
-- Data for Name: changedfields; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: content; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (1, 1, 2, NULL, '2022-02-27 10:06:15', '2022-02-27 10:06:15', 'ac1e9244-3ffb-4763-aefb-a6a353e98df3', NULL, NULL);
INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (4, 3, 1, 'Homepage', '2022-02-27 10:32:03', '2022-02-27 10:32:03', 'f41f2e83-5310-4a0b-b34f-e8fb15bdf083', NULL, NULL);
INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (5, 3, 2, 'Homepage', '2022-02-27 10:32:03', '2022-02-27 10:32:03', '7ae125ec-a76b-4601-8265-ad56130805af', NULL, NULL);
INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (3, 2, 2, 'Homepage', '2022-02-27 10:31:54', '2022-02-27 10:32:49', '8ab687f4-4106-4679-bf32-a4d798661f4d', NULL, NULL);
INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (6, 4, 2, NULL, '2022-02-27 10:52:52', '2022-02-27 10:59:14', 'e2f754e9-f45f-4af4-9dbd-43c9db95d8a9', NULL, NULL);
INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (7, 5, 2, 'Terms and Conditions', '2022-02-27 11:03:02', '2022-02-27 11:03:10', '0bfcdff5-8efb-4fc4-a844-0731e9ea547a', NULL, NULL);
INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (8, 6, 2, 'Terms and Conditions', '2022-02-27 11:03:10', '2022-02-27 11:03:10', '9a045676-5227-4ff8-836a-07bc22573053', NULL, NULL);
INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (10, 8, 2, 'Terms and Conditions copy', '2022-02-27 11:03:20', '2022-02-27 11:03:20', '9e9a2b9c-248b-40cf-b84c-c99e279f6d5a', NULL, NULL);
INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (9, 7, 2, 'Privacy Policy', '2022-02-27 11:03:20', '2022-02-27 11:03:33', '2a42ee8e-fefa-4348-9f05-e8c10e3d7e8e', NULL, NULL);
INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (12, 10, 2, 'Privacy Policy', '2022-02-27 11:03:33', '2022-02-27 11:03:33', 'c5d8931e-4bb5-4059-8893-f15767c9ad16', NULL, NULL);
INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (13, 11, 2, 'Terms and Conditions', '2022-02-27 11:03:47', '2022-02-27 11:03:47', '6d66a288-b667-48e2-a9c3-45a229d04329', NULL, NULL);
INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (14, 12, 2, 'Privacy Policy', '2022-02-27 11:03:49', '2022-02-27 11:03:49', '9239b7a8-17a1-45a8-a4c8-71c3cfa9d652', NULL, NULL);
INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (15, 13, 2, 'Home', '2022-02-27 11:04:09', '2022-02-27 11:04:20', '92cbb4b0-a99a-4304-8163-99464f65dd4b', NULL, NULL);
INSERT INTO public.content (id, "elementId", "siteId", title, "dateCreated", "dateUpdated", uid, "field_primaryEmailAddress_cpisbmwq", "field_altText_wsbceffg") VALUES (16, 14, 2, 'Photo by Łukasz Rawa', '2022-02-27 12:11:22', '2022-02-27 12:11:22', '3b3b95cf-8eac-42f6-8917-c1f4eb4b6bb9', NULL, NULL);


--
-- Data for Name: cpnav_layout; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cpnav_layout (id, name, "isDefault", permissions, "sortOrder", "dateCreated", "dateUpdated", uid) VALUES (1, 'Default', true, 'null', 1, '2022-02-27 12:11:51', '2022-02-27 12:11:51', '84a829e7-98fe-429f-9ab4-33e75d521955');


--
-- Data for Name: cpnav_navigation; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cpnav_navigation (id, "layoutId", handle, "prevLabel", "currLabel", enabled, "order", "prevUrl", url, icon, "customIcon", type, "newWindow", "dateCreated", "dateUpdated", uid) VALUES (8, 1, 'utilities', 'Utilities', 'Utilities', true, 12, 'utilities', 'utilities', 'tool', '', '', false, '2022-02-27 12:11:51', '2022-02-27 12:13:16', '5051c52d-913b-43d7-a9a9-9cbb3a4ac916');
INSERT INTO public.cpnav_navigation (id, "layoutId", handle, "prevLabel", "currLabel", enabled, "order", "prevUrl", url, icon, "customIcon", type, "newWindow", "dateCreated", "dateUpdated", uid) VALUES (10, 1, 'plugin-store', 'Plugin Store', 'Plugin Store', true, 13, 'plugin-store', 'plugin-store', 'plugin', '', '', false, '2022-02-27 12:11:51', '2022-02-27 12:13:16', '1101d5cb-40e5-437f-a8a1-e36fb61db131');
INSERT INTO public.cpnav_navigation (id, "layoutId", handle, "prevLabel", "currLabel", enabled, "order", "prevUrl", url, icon, "customIcon", type, "newWindow", "dateCreated", "dateUpdated", uid) VALUES (11, 1, 'divider', 'Divider', 'Assets', true, 7, '', '', '', '', 'divider', false, '2022-02-27 12:12:10', '2022-02-27 12:13:20', '63cec81f-9a6b-407e-9c38-13af8606adce');
INSERT INTO public.cpnav_navigation (id, "layoutId", handle, "prevLabel", "currLabel", enabled, "order", "prevUrl", url, icon, "customIcon", type, "newWindow", "dateCreated", "dateUpdated", uid) VALUES (4, 1, 'assets', 'Assets', 'Uploads', true, 8, 'assets', 'assets', '', '', '', false, '2022-02-27 12:11:51', '2022-02-27 12:13:20', '5f352fe0-8d0e-4287-abbc-800d92f05710');
INSERT INTO public.cpnav_navigation (id, "layoutId", handle, "prevLabel", "currLabel", enabled, "order", "prevUrl", url, icon, "customIcon", type, "newWindow", "dateCreated", "dateUpdated", uid) VALUES (6, 1, 'splashing-images', 'Unsplash Images', 'Unsplash Images', true, 9, 'splashing-images', 'splashing-images', '/app/vendor/studioespresso/craft-splashingimages/src/icon-mask.svg', '', '', false, '2022-02-27 12:11:51', '2022-02-27 12:13:20', '8fb38aa7-1504-4cd1-924f-2b417c106df9');
INSERT INTO public.cpnav_navigation (id, "layoutId", handle, "prevLabel", "currLabel", enabled, "order", "prevUrl", url, icon, "customIcon", type, "newWindow", "dateCreated", "dateUpdated", uid) VALUES (9, 1, 'settings', 'Settings', 'Settings', true, 11, 'settings', 'settings', 'settings', '', '', false, '2022-02-27 12:11:51', '2022-02-27 12:13:20', 'b0de48ad-b56c-4008-8ebd-b935d661a3b2');
INSERT INTO public.cpnav_navigation (id, "layoutId", handle, "prevLabel", "currLabel", enabled, "order", "prevUrl", url, icon, "customIcon", type, "newWindow", "dateCreated", "dateUpdated", uid) VALUES (13, 1, 'divider', 'Divider', 'Admin', true, 10, '', '', '', '', 'divider', false, '2022-02-27 12:13:10', '2022-02-27 12:13:37', 'dfac18b8-8f4a-4b8d-b567-e562277a56ad');
INSERT INTO public.cpnav_navigation (id, "layoutId", handle, "prevLabel", "currLabel", enabled, "order", "prevUrl", url, icon, "customIcon", type, "newWindow", "dateCreated", "dateUpdated", uid) VALUES (2, 1, 'entries', 'Entries', 'Entries', true, 3, 'entries', 'entries', 'section', '', '', false, '2022-02-27 12:11:51', '2022-02-27 12:12:56', 'dd6ff908-7f68-489f-acd0-2725869498f7');
INSERT INTO public.cpnav_navigation (id, "layoutId", handle, "prevLabel", "currLabel", enabled, "order", "prevUrl", url, icon, "customIcon", type, "newWindow", "dateCreated", "dateUpdated", uid) VALUES (3, 1, 'globals', 'Globals', 'Globals', true, 4, 'globals', 'globals', 'globe', '', '', false, '2022-02-27 12:11:51', '2022-02-27 12:12:56', '1f41e4c6-f9e7-4cec-a072-ef3b13283a90');
INSERT INTO public.cpnav_navigation (id, "layoutId", handle, "prevLabel", "currLabel", enabled, "order", "prevUrl", url, icon, "customIcon", type, "newWindow", "dateCreated", "dateUpdated", uid) VALUES (5, 1, 'navigation', 'Navigation', 'Navigation', true, 5, 'navigation', 'navigation', '/app/vendor/verbb/navigation/src/icon-mask.svg', '', '', false, '2022-02-27 12:11:51', '2022-02-27 12:12:56', '45c0ed88-2e24-4d81-9f39-cdb492a02c33');
INSERT INTO public.cpnav_navigation (id, "layoutId", handle, "prevLabel", "currLabel", enabled, "order", "prevUrl", url, icon, "customIcon", type, "newWindow", "dateCreated", "dateUpdated", uid) VALUES (7, 1, 'tags', 'Tags', 'Tags', true, 6, 'tags', 'tags', '/app/vendor/ether/tags/src/icon-mask.svg', '', '', false, '2022-02-27 12:11:51', '2022-02-27 12:12:56', 'a308c269-3a36-4c9e-a2ba-b4afd75ea59b');
INSERT INTO public.cpnav_navigation (id, "layoutId", handle, "prevLabel", "currLabel", enabled, "order", "prevUrl", url, icon, "customIcon", type, "newWindow", "dateCreated", "dateUpdated", uid) VALUES (1, 1, 'dashboard', 'Dashboard', 'Dashboard', true, 1, 'dashboard', 'dashboard', 'gauge', '', '', false, '2022-02-27 12:11:51', '2022-02-27 12:12:59', '7ac10b29-2dcb-4783-95fe-04423fab3110');
INSERT INTO public.cpnav_navigation (id, "layoutId", handle, "prevLabel", "currLabel", enabled, "order", "prevUrl", url, icon, "customIcon", type, "newWindow", "dateCreated", "dateUpdated", uid) VALUES (12, 1, 'divider', 'Divider', 'Content', true, 2, '', '', '', '', 'divider', false, '2022-02-27 12:12:43', '2022-02-27 12:12:59', '32d62ced-e5c1-485c-a311-5f302c73ace9');


--
-- Data for Name: cpnav_pending_navigations; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: craftidtokens; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: deprecationerrors; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: drafts; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: elementindexsettings; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: elements; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.elements (id, "canonicalId", "draftId", "revisionId", "fieldLayoutId", type, enabled, archived, "dateCreated", "dateUpdated", "dateLastMerged", "dateDeleted", uid) VALUES (1, NULL, NULL, NULL, NULL, 'craft\elements\User', true, false, '2022-02-27 10:06:15', '2022-02-27 10:06:15', NULL, NULL, 'edf96a0e-8acf-4100-9ce3-d144ed3394fc');
INSERT INTO public.elements (id, "canonicalId", "draftId", "revisionId", "fieldLayoutId", type, enabled, archived, "dateCreated", "dateUpdated", "dateLastMerged", "dateDeleted", uid) VALUES (3, 2, NULL, 1, 1, 'craft\elements\Entry', true, false, '2022-02-27 10:32:03', '2022-02-27 10:32:03', NULL, NULL, '94ace590-d72f-4e8a-86a0-5f86f16fb78a');
INSERT INTO public.elements (id, "canonicalId", "draftId", "revisionId", "fieldLayoutId", type, enabled, archived, "dateCreated", "dateUpdated", "dateLastMerged", "dateDeleted", uid) VALUES (2, NULL, NULL, NULL, 1, 'craft\elements\Entry', true, false, '2022-02-27 10:31:53', '2022-02-27 10:32:03', NULL, NULL, '9969541c-56b2-46e8-9919-639319336b48');
INSERT INTO public.elements (id, "canonicalId", "draftId", "revisionId", "fieldLayoutId", type, enabled, archived, "dateCreated", "dateUpdated", "dateLastMerged", "dateDeleted", uid) VALUES (4, NULL, NULL, NULL, 3, 'craft\elements\GlobalSet', true, false, '2022-02-27 10:52:52', '2022-02-27 10:59:14', NULL, NULL, 'f96e45de-1941-4b23-ab25-3e4a09bb2ea1');
INSERT INTO public.elements (id, "canonicalId", "draftId", "revisionId", "fieldLayoutId", type, enabled, archived, "dateCreated", "dateUpdated", "dateLastMerged", "dateDeleted", uid) VALUES (5, NULL, NULL, NULL, 1, 'craft\elements\Entry', true, false, '2022-02-27 11:03:02', '2022-02-27 11:03:10', NULL, NULL, '932c9a3c-d3c0-4a6a-bcbf-c212e8731943');
INSERT INTO public.elements (id, "canonicalId", "draftId", "revisionId", "fieldLayoutId", type, enabled, archived, "dateCreated", "dateUpdated", "dateLastMerged", "dateDeleted", uid) VALUES (6, 5, NULL, 2, 1, 'craft\elements\Entry', true, false, '2022-02-27 11:03:10', '2022-02-27 11:03:10', NULL, NULL, '48a3e831-cfee-484e-bd6c-529918dd5815');
INSERT INTO public.elements (id, "canonicalId", "draftId", "revisionId", "fieldLayoutId", type, enabled, archived, "dateCreated", "dateUpdated", "dateLastMerged", "dateDeleted", uid) VALUES (8, 7, NULL, 3, 1, 'craft\elements\Entry', true, false, '2022-02-27 11:03:20', '2022-02-27 11:03:20', NULL, NULL, 'b9e69b30-b55a-4e61-b5f7-cec6abea993f');
INSERT INTO public.elements (id, "canonicalId", "draftId", "revisionId", "fieldLayoutId", type, enabled, archived, "dateCreated", "dateUpdated", "dateLastMerged", "dateDeleted", uid) VALUES (7, NULL, NULL, NULL, 1, 'craft\elements\Entry', true, false, '2022-02-27 11:03:20', '2022-02-27 11:03:33', NULL, NULL, 'ededa54b-0bcd-4f6a-965b-ac3c1aac7a24');
INSERT INTO public.elements (id, "canonicalId", "draftId", "revisionId", "fieldLayoutId", type, enabled, archived, "dateCreated", "dateUpdated", "dateLastMerged", "dateDeleted", uid) VALUES (10, 7, NULL, 4, 1, 'craft\elements\Entry', true, false, '2022-02-27 11:03:33', '2022-02-27 11:03:33', NULL, NULL, 'bfc31051-0b1b-4d55-97aa-53ff3b69af4e');
INSERT INTO public.elements (id, "canonicalId", "draftId", "revisionId", "fieldLayoutId", type, enabled, archived, "dateCreated", "dateUpdated", "dateLastMerged", "dateDeleted", uid) VALUES (11, NULL, NULL, NULL, NULL, 'verbb\navigation\elements\Node', true, false, '2022-02-27 11:03:47', '2022-02-27 11:03:47', NULL, NULL, 'b09ff037-3352-4300-b030-66e279f09c34');
INSERT INTO public.elements (id, "canonicalId", "draftId", "revisionId", "fieldLayoutId", type, enabled, archived, "dateCreated", "dateUpdated", "dateLastMerged", "dateDeleted", uid) VALUES (12, NULL, NULL, NULL, NULL, 'verbb\navigation\elements\Node', true, false, '2022-02-27 11:03:49', '2022-02-27 11:03:49', NULL, NULL, 'e9858df5-bf6c-46ad-a00e-52dee86eb433');
INSERT INTO public.elements (id, "canonicalId", "draftId", "revisionId", "fieldLayoutId", type, enabled, archived, "dateCreated", "dateUpdated", "dateLastMerged", "dateDeleted", uid) VALUES (13, NULL, NULL, NULL, NULL, 'verbb\navigation\elements\Node', true, false, '2022-02-27 11:04:09', '2022-02-27 11:04:20', NULL, NULL, '7282ce9b-2e8a-4608-9020-4e941b05dd9b');
INSERT INTO public.elements (id, "canonicalId", "draftId", "revisionId", "fieldLayoutId", type, enabled, archived, "dateCreated", "dateUpdated", "dateLastMerged", "dateDeleted", uid) VALUES (14, NULL, NULL, NULL, 4, 'craft\elements\Asset', true, false, '2022-02-27 12:11:22', '2022-02-27 12:11:22', NULL, '2022-02-27 12:11:45', '95bfbb57-9675-411b-8ca2-2bde3570e08a');


--
-- Data for Name: elements_sites; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (1, 1, 2, NULL, NULL, true, '2022-02-27 10:06:15', '2022-02-27 10:06:15', '8790aa31-de67-4972-a55f-375be689875b');
INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (3, 2, 2, '__home__', '__home__', true, '2022-02-27 10:31:54', '2022-02-27 10:32:02', '913912c6-72c4-4d4f-9c34-7e404c0fe602');
INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (4, 3, 1, '__home__', '__home__', true, '2022-02-27 10:32:03', '2022-02-27 10:32:03', '91f8be99-e357-47a6-86ab-c97300c2c386');
INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (5, 3, 2, '__home__', '__home__', true, '2022-02-27 10:32:03', '2022-02-27 10:32:03', 'a4972f7a-f7e6-424c-85f3-72193a968bc6');
INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (6, 4, 2, NULL, NULL, true, '2022-02-27 10:52:52', '2022-02-27 10:52:52', '2acd42be-8a94-4526-aa7e-3375c703f59b');
INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (7, 5, 2, 'terms-and-conditions', 'terms-and-conditions', true, '2022-02-27 11:03:02', '2022-02-27 11:03:09', 'ffce1dd5-83b0-4817-843e-827f0c7bfb8b');
INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (8, 6, 2, 'terms-and-conditions', 'terms-and-conditions', true, '2022-02-27 11:03:10', '2022-02-27 11:03:10', 'a9d3a7df-c01b-4b95-9912-70f73e4cc0e5');
INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (10, 8, 2, 'terms-and-conditions-2', 'terms-and-conditions-2', true, '2022-02-27 11:03:20', '2022-02-27 11:03:20', 'cf46ff86-e949-4c3c-9088-819272618316');
INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (9, 7, 2, 'privacy-policy', 'privacy-policy', true, '2022-02-27 11:03:20', '2022-02-27 11:03:33', 'eadb661b-1caa-4879-ba36-21399e5d1f1e');
INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (12, 10, 2, 'privacy-policy', 'privacy-policy', true, '2022-02-27 11:03:33', '2022-02-27 11:03:33', '09ba8182-cd9f-47db-8d89-e1d6107d12f3');
INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (13, 11, 2, '2', NULL, true, '2022-02-27 11:03:47', '2022-02-27 11:03:47', '86c9b365-2785-432b-a251-b231ee751341');
INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (14, 12, 2, '2', NULL, true, '2022-02-27 11:03:49', '2022-02-27 11:03:49', '1ea69bd2-8871-41ee-8e07-b6db8c09b2fb');
INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (15, 13, 2, '2', NULL, true, '2022-02-27 11:04:09', '2022-02-27 11:04:09', 'cf18fcc7-44c2-4334-8547-25bb1b5f5e1e');
INSERT INTO public.elements_sites (id, "elementId", "siteId", slug, uri, enabled, "dateCreated", "dateUpdated", uid) VALUES (16, 14, 2, NULL, NULL, true, '2022-02-27 12:11:22', '2022-02-27 12:11:22', '6974fb92-e8c0-4f65-8fa0-41c229938215');


--
-- Data for Name: entries; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.entries (id, "sectionId", "parentId", "typeId", "authorId", "postDate", "expiryDate", "deletedWithEntryType", "dateCreated", "dateUpdated", uid) VALUES (2, 1, NULL, 1, 1, '2022-02-27 10:31:00', NULL, NULL, '2022-02-27 10:31:53', '2022-02-27 10:31:53', '9f273897-1312-4314-ac5c-ee5803e1b516');
INSERT INTO public.entries (id, "sectionId", "parentId", "typeId", "authorId", "postDate", "expiryDate", "deletedWithEntryType", "dateCreated", "dateUpdated", uid) VALUES (3, 1, NULL, 1, 1, '2022-02-27 10:31:00', NULL, NULL, '2022-02-27 10:32:03', '2022-02-27 10:32:03', '4dfa06fc-4bdc-4508-aa90-9fa9fb702562');
INSERT INTO public.entries (id, "sectionId", "parentId", "typeId", "authorId", "postDate", "expiryDate", "deletedWithEntryType", "dateCreated", "dateUpdated", uid) VALUES (5, 1, NULL, 1, 1, '2022-02-27 11:03:00', NULL, NULL, '2022-02-27 11:03:02', '2022-02-27 11:03:02', '843d2e98-643b-47ff-b39b-91f9fad0ee4f');
INSERT INTO public.entries (id, "sectionId", "parentId", "typeId", "authorId", "postDate", "expiryDate", "deletedWithEntryType", "dateCreated", "dateUpdated", uid) VALUES (6, 1, NULL, 1, 1, '2022-02-27 11:03:00', NULL, NULL, '2022-02-27 11:03:10', '2022-02-27 11:03:10', 'ec05e826-32b2-444a-b1bf-4c053735b719');
INSERT INTO public.entries (id, "sectionId", "parentId", "typeId", "authorId", "postDate", "expiryDate", "deletedWithEntryType", "dateCreated", "dateUpdated", uid) VALUES (7, 1, NULL, 1, 1, '2022-02-27 11:03:00', NULL, NULL, '2022-02-27 11:03:20', '2022-02-27 11:03:20', 'afbed26f-1502-4d0d-8c1b-93494ef4bfd9');
INSERT INTO public.entries (id, "sectionId", "parentId", "typeId", "authorId", "postDate", "expiryDate", "deletedWithEntryType", "dateCreated", "dateUpdated", uid) VALUES (8, 1, NULL, 1, 1, '2022-02-27 11:03:00', NULL, NULL, '2022-02-27 11:03:20', '2022-02-27 11:03:20', '3813f816-4a1e-4d93-9549-9406d12e33e6');
INSERT INTO public.entries (id, "sectionId", "parentId", "typeId", "authorId", "postDate", "expiryDate", "deletedWithEntryType", "dateCreated", "dateUpdated", uid) VALUES (10, 1, NULL, 1, 1, '2022-02-27 11:03:00', NULL, NULL, '2022-02-27 11:03:33', '2022-02-27 11:03:33', '1e7f80d3-86d0-48bf-91b1-0b2022ef0517');


--
-- Data for Name: entrytypes; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.entrytypes (id, "sectionId", "fieldLayoutId", name, handle, "hasTitleField", "titleTranslationMethod", "titleTranslationKeyFormat", "titleFormat", "sortOrder", "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (1, 1, 1, 'Standard Content', 'standardContent', true, 'site', NULL, NULL, 1, '2022-02-27 10:31:22', '2022-02-27 10:31:45', NULL, '0b9c30a7-78a4-495f-b803-a3e170b972b8');


--
-- Data for Name: fieldgroups; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.fieldgroups (id, name, "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (1, 'Common', '2022-02-27 10:06:15', '2022-02-27 10:06:15', NULL, 'a0b2c6ec-eb21-4e8c-ae50-05d81c71f3bc');
INSERT INTO public.fieldgroups (id, name, "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (2, 'Globals', '2022-02-27 10:53:09', '2022-02-27 10:53:09', NULL, 'b4265419-d2d6-4b1c-b601-52a06c58c2f8');
INSERT INTO public.fieldgroups (id, name, "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (3, 'Assets', '2022-02-27 12:06:25', '2022-02-27 12:06:25', NULL, '33342372-1eb6-4e99-9f15-cf18b2c29a89');


--
-- Data for Name: fieldlayoutfields; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.fieldlayoutfields (id, "layoutId", "tabId", "fieldId", required, "sortOrder", "dateCreated", "dateUpdated", uid) VALUES (1, 2, 3, 3, true, 0, '2022-02-27 10:55:56', '2022-02-27 10:55:56', '8073bf67-4b26-4820-92fa-e04fb4cabe0d');
INSERT INTO public.fieldlayoutfields (id, "layoutId", "tabId", "fieldId", required, "sortOrder", "dateCreated", "dateUpdated", uid) VALUES (2, 2, 3, 2, true, 1, '2022-02-27 10:55:56', '2022-02-27 10:55:56', 'f883da28-6c02-4959-9d7b-c9fb1d99756a');
INSERT INTO public.fieldlayoutfields (id, "layoutId", "tabId", "fieldId", required, "sortOrder", "dateCreated", "dateUpdated", uid) VALUES (3, 3, 4, 4, false, 0, '2022-02-27 10:59:14', '2022-02-27 10:59:14', '73ec1fa5-9c01-408a-9f42-c871074b4c92');
INSERT INTO public.fieldlayoutfields (id, "layoutId", "tabId", "fieldId", required, "sortOrder", "dateCreated", "dateUpdated", uid) VALUES (4, 3, 5, 1, false, 0, '2022-02-27 10:59:14', '2022-02-27 10:59:14', '0da9550c-f119-4a20-b723-6dc50bdbf5f7');
INSERT INTO public.fieldlayoutfields (id, "layoutId", "tabId", "fieldId", required, "sortOrder", "dateCreated", "dateUpdated", uid) VALUES (5, 4, 7, 5, false, 1, '2022-02-27 12:06:52', '2022-02-27 12:06:52', '605cca4c-c23a-4213-9b00-e75a0bc469ec');


--
-- Data for Name: fieldlayouts; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.fieldlayouts (id, type, "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (1, 'craft\elements\Entry', '2022-02-27 10:31:22', '2022-02-27 10:31:22', NULL, '9514ddca-f611-4aff-939c-9db35f505618');
INSERT INTO public.fieldlayouts (id, type, "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (2, 'verbb\supertable\elements\SuperTableBlockElement', '2022-02-27 10:55:56', '2022-02-27 10:55:56', NULL, 'b1791de0-6eff-4be5-8272-0a4aa80e92f3');
INSERT INTO public.fieldlayouts (id, type, "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (3, 'craft\elements\GlobalSet', '2022-02-27 10:59:14', '2022-02-27 10:59:14', NULL, '052e65a8-59b8-46ca-acf2-fe7c7edf671f');
INSERT INTO public.fieldlayouts (id, type, "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (4, 'craft\elements\Asset', '2022-02-27 12:06:15', '2022-02-27 12:06:15', NULL, 'f75bd182-d4de-4043-98d7-c1d1b9a016f7');


--
-- Data for Name: fieldlayouttabs; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.fieldlayouttabs (id, "layoutId", name, elements, "sortOrder", "dateCreated", "dateUpdated", uid) VALUES (2, 1, 'Content', '[{"type":"craft\\fieldlayoutelements\\EntryTitleField","autocomplete":false,"class":null,"size":null,"name":null,"autocorrect":true,"autocapitalize":true,"disabled":false,"readonly":false,"title":null,"placeholder":null,"step":null,"min":null,"max":null,"requirable":false,"id":null,"containerAttributes":[],"inputContainerAttributes":[],"labelAttributes":[],"orientation":null,"label":null,"instructions":null,"tip":null,"warning":null,"width":100}]', 1, '2022-02-27 10:31:45', '2022-02-27 10:31:45', 'df58ab50-fc21-4fc7-bfdb-d393d1d8c14d');
INSERT INTO public.fieldlayouttabs (id, "layoutId", name, elements, "sortOrder", "dateCreated", "dateUpdated", uid) VALUES (3, 2, 'Content', '[{"type":"craft\\fieldlayoutelements\\CustomField","label":null,"instructions":null,"tip":null,"warning":null,"required":true,"width":100,"fieldUid":"ec6081a9-87b4-42ae-b261-6fdd2d496956"},{"type":"craft\\fieldlayoutelements\\CustomField","label":null,"instructions":null,"tip":null,"warning":null,"required":true,"width":100,"fieldUid":"6b9d2e78-50a2-4344-89fe-16f091143755"}]', 1, '2022-02-27 10:55:56', '2022-02-27 10:55:56', 'e8d7a780-4736-4c09-be45-9c1201d60853');
INSERT INTO public.fieldlayouttabs (id, "layoutId", name, elements, "sortOrder", "dateCreated", "dateUpdated", uid) VALUES (4, 3, 'Details', '[{"type":"craft\\fieldlayoutelements\\CustomField","label":null,"instructions":null,"tip":null,"warning":null,"required":false,"width":100,"fieldUid":"4a6d78cc-1f57-4c48-b157-7320e1309ac5"}]', 1, '2022-02-27 10:59:14', '2022-02-27 10:59:14', '059051ca-1a4b-4047-9255-f94b5dd6df4c');
INSERT INTO public.fieldlayouttabs (id, "layoutId", name, elements, "sortOrder", "dateCreated", "dateUpdated", uid) VALUES (5, 3, 'Social Networks', '[{"type":"craft\\fieldlayoutelements\\CustomField","label":null,"instructions":null,"tip":null,"warning":null,"required":false,"width":100,"fieldUid":"1c3609c8-6750-4ecd-8f5b-da0b920d40ea"}]', 2, '2022-02-27 10:59:14', '2022-02-27 10:59:14', '36a161e7-fc3d-4f34-87e4-e6b70e8f96f9');
INSERT INTO public.fieldlayouttabs (id, "layoutId", name, elements, "sortOrder", "dateCreated", "dateUpdated", uid) VALUES (7, 4, 'Content', '[{"type":"craft\\fieldlayoutelements\\AssetTitleField","autocomplete":false,"class":null,"size":null,"name":null,"autocorrect":true,"autocapitalize":true,"disabled":false,"readonly":false,"title":null,"placeholder":null,"step":null,"min":null,"max":null,"requirable":false,"id":null,"containerAttributes":[],"inputContainerAttributes":[],"labelAttributes":[],"orientation":null,"label":null,"instructions":null,"tip":null,"warning":null,"width":100},{"type":"craft\\fieldlayoutelements\\CustomField","label":null,"instructions":null,"tip":null,"warning":null,"required":false,"width":100,"fieldUid":"1bf85d47-1766-405b-a7a9-1d8a6985d1a3"}]', 1, '2022-02-27 12:06:52', '2022-02-27 12:06:52', '91d8fba4-9a81-41fe-8a08-239fb8f068a7');


--
-- Data for Name: fields; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.fields (id, "groupId", name, handle, context, "columnSuffix", instructions, searchable, "translationMethod", "translationKeyFormat", type, settings, "dateCreated", "dateUpdated", uid) VALUES (1, 2, 'Social Networks', 'socialNetworks', 'global', NULL, '', false, 'site', NULL, 'verbb\supertable\fields\SuperTableField', '{"columns":{"69634719-284a-4131-97f3-c1765dbb0a7f":{"width":""},"deb21e5d-868e-403f-a997-68474902a793":{"width":""}},"contentTable":"{{%stc_socialnetworks}}","fieldLayout":"row","maxRows":"","minRows":"","placeholderKey":null,"propagationKeyFormat":null,"propagationMethod":"all","selectionLabel":"","staticField":""}', '2022-02-27 10:55:56', '2022-02-27 10:55:56', '1c3609c8-6750-4ecd-8f5b-da0b920d40ea');
INSERT INTO public.fields (id, "groupId", name, handle, context, "columnSuffix", instructions, searchable, "translationMethod", "translationKeyFormat", type, settings, "dateCreated", "dateUpdated", uid) VALUES (2, NULL, 'Account Url', 'accountUrl', 'superTableBlockType:1e04ba6e-bfb4-4cd6-a004-b38120769120', 'yefrdgxi', 'Paste the full network url.', false, 'none', NULL, 'craft\fields\Url', '{"maxLength":"255","placeholder":null,"types":["url"]}', '2022-02-27 10:55:56', '2022-02-27 10:55:56', '6b9d2e78-50a2-4344-89fe-16f091143755');
INSERT INTO public.fields (id, "groupId", name, handle, context, "columnSuffix", instructions, searchable, "translationMethod", "translationKeyFormat", type, settings, "dateCreated", "dateUpdated", uid) VALUES (3, NULL, 'Network', 'network', 'superTableBlockType:1e04ba6e-bfb4-4cd6-a004-b38120769120', 'sfvypyqo', '', false, 'none', NULL, 'craft\fields\Dropdown', '{"optgroups":true,"options":[{"label":"Facebook","value":"facebook","default":""},{"label":"Twitter","value":"twitter","default":""},{"label":"Instagram","value":"instagram","default":""},{"label":"YouTube","value":"youtube","default":""},{"label":"LinkedIn","value":"linkedin","default":""},{"label":"Spotify","value":"spotify","default":""},{"label":"Pinterest","value":"pinterest","default":""},{"label":"SoundCloud","value":"soundcloud","default":""},{"label":"Vimeo","value":"vimeo","default":""},{"label":"","value":"","default":""}]}', '2022-02-27 10:55:56', '2022-02-27 10:55:56', 'ec6081a9-87b4-42ae-b261-6fdd2d496956');
INSERT INTO public.fields (id, "groupId", name, handle, context, "columnSuffix", instructions, searchable, "translationMethod", "translationKeyFormat", type, settings, "dateCreated", "dateUpdated", uid) VALUES (4, 2, 'Primary Email Address', 'primaryEmailAddress', 'global', 'cpisbmwq', '', false, 'none', NULL, 'craft\fields\Email', '{"placeholder":""}', '2022-02-27 10:58:11', '2022-02-27 10:58:11', '4a6d78cc-1f57-4c48-b157-7320e1309ac5');
INSERT INTO public.fields (id, "groupId", name, handle, context, "columnSuffix", instructions, searchable, "translationMethod", "translationKeyFormat", type, settings, "dateCreated", "dateUpdated", uid) VALUES (5, 3, 'Alt Text', 'altText', 'global', 'wsbceffg', '', false, 'none', NULL, 'craft\fields\PlainText', '{"byteLimit":null,"charLimit":null,"code":"","columnType":null,"initialRows":"4","multiline":"","placeholder":null,"uiMode":"normal"}', '2022-02-27 12:06:36', '2022-02-27 12:06:36', '1bf85d47-1766-405b-a7a9-1d8a6985d1a3');


--
-- Data for Name: globalsets; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.globalsets (id, name, handle, "fieldLayoutId", "sortOrder", "dateCreated", "dateUpdated", uid) VALUES (4, 'Site Details', 'siteDetails', 3, 1, '2022-02-27 10:52:52', '2022-02-27 10:59:14', 'f96e45de-1941-4b23-ab25-3e4a09bb2ea1');


--
-- Data for Name: gqlschemas; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: gqltokens; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: info; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.info (id, version, "schemaVersion", maintenance, "configVersion", "fieldVersion", "dateCreated", "dateUpdated", uid) VALUES (1, '3.7.34', '3.7.33', false, 'sevgujlwgctp', '2@iauupstuba', '2022-02-27 10:06:15', '2022-02-27 12:13:37', '4e502567-8d3f-4a4f-8fd2-8ac68748ad52');


--
-- Data for Name: matrixblocks; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: matrixblocktypes; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (1, 'craft', 'Install', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'd267c51e-dad7-4fe1-ad14-61d7fae672f2');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (2, 'craft', 'm150403_183908_migrations_table_changes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e3ede647-aae1-4e41-9266-bad0dde47148');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (3, 'craft', 'm150403_184247_plugins_table_changes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '4cdf9c14-b9b5-407d-935c-ebfcfcc97c3c');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (4, 'craft', 'm150403_184533_field_version', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '04e9ffe5-fb6d-4333-818f-3b5ad15748a1');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (5, 'craft', 'm150403_184729_type_columns', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'b68258e4-acef-442a-93cc-e772533b04d5');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (6, 'craft', 'm150403_185142_volumes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'd8ab26ba-77e0-40f4-8e6a-4d991c54ad5b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (7, 'craft', 'm150428_231346_userpreferences', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'bb2ba5eb-ceb5-4c21-9669-18415218e3a0');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (8, 'craft', 'm150519_150900_fieldversion_conversion', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '22cd42c6-d950-4e19-b2ba-41c9ff71d634');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (9, 'craft', 'm150617_213829_update_email_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '5dfdbf61-3109-431f-9fb2-cdffda6b5013');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (10, 'craft', 'm150721_124739_templatecachequeries', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'f34ccfc2-10a5-4849-bebf-dcb95d57b94c');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (11, 'craft', 'm150724_140822_adjust_quality_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'b3cb0234-67e6-46f7-9855-b8e7cb0e2545');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (12, 'craft', 'm150815_133521_last_login_attempt_ip', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'f3b6ab49-8123-4ed7-a286-bafef7cfc114');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (13, 'craft', 'm151002_095935_volume_cache_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '6c490951-e6f3-463c-afca-b0bc546f8394');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (14, 'craft', 'm151005_142750_volume_s3_storage_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e6495b99-9143-4b92-93ce-a5059f3244d1');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (15, 'craft', 'm151016_133600_delete_asset_thumbnails', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '6a950d55-6abe-4c53-a3bd-3a4c138d4c8f');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (16, 'craft', 'm151209_000000_move_logo', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'bdca58ad-d6be-4714-bb84-34f94adf3089');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (17, 'craft', 'm151211_000000_rename_fileId_to_assetId', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '5ed5c12c-19d1-4823-b295-9552bdca7b4b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (18, 'craft', 'm151215_000000_rename_asset_permissions', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '32504ccb-79a4-4a5c-99e8-42eaed802477');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (19, 'craft', 'm160707_000001_rename_richtext_assetsource_setting', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e3044e9c-4169-41f9-b8dc-cdccaccace31');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (20, 'craft', 'm160708_185142_volume_hasUrls_setting', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e3aa2f25-94be-4075-888a-5a55b5553210');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (21, 'craft', 'm160714_000000_increase_max_asset_filesize', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '48cffb36-6f2e-4d9a-9894-c2e1a6c7915e');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (22, 'craft', 'm160727_194637_column_cleanup', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'bb86ae42-733b-4183-ba67-7bd72967aaaa');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (23, 'craft', 'm160804_110002_userphotos_to_assets', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'd69d9a6b-070e-4c55-8989-f047a23c0883');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (24, 'craft', 'm160807_144858_sites', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'b5e92d12-5a88-47c2-ab3a-7bcc5f0126f4');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (25, 'craft', 'm160829_000000_pending_user_content_cleanup', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'd2b45cc5-832f-4674-8c67-7d75a2c9ef97');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (26, 'craft', 'm160830_000000_asset_index_uri_increase', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'cc7d188a-d2bf-42f1-9cf0-169750ca0edd');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (27, 'craft', 'm160912_230520_require_entry_type_id', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '294df27f-a031-4f35-9559-ead785388fb0');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (28, 'craft', 'm160913_134730_require_matrix_block_type_id', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '915c5ba7-cd11-40bd-aede-4361abc82a34');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (29, 'craft', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '843a3d4d-4c54-4add-9634-83977c9cfbd1');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (30, 'craft', 'm160920_231045_usergroup_handle_title_unique', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '06fcdff6-a6e0-40e7-9e78-45bb516f3ec2');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (31, 'craft', 'm160925_113941_route_uri_parts', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'ff89a6bb-c73d-43e3-b40e-692546933658');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (32, 'craft', 'm161006_205918_schemaVersion_not_null', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '8b086fce-3f04-49a3-85f6-15a43dc3a53f');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (33, 'craft', 'm161007_130653_update_email_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '850dc429-45e0-4656-903f-144801c4230b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (34, 'craft', 'm161013_175052_newParentId', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'cf29188d-4808-4623-9608-d05022b7b212');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (35, 'craft', 'm161021_102916_fix_recent_entries_widgets', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'df3fbe14-af1e-47bd-9322-a02b265b1b2d');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (36, 'craft', 'm161021_182140_rename_get_help_widget', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '6d9dad0a-aec5-4b28-a2c4-ddc2c1bbc1f1');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (37, 'craft', 'm161025_000000_fix_char_columns', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '33007fc1-1d0a-4e93-b0fd-cb268b888e7a');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (38, 'craft', 'm161029_124145_email_message_languages', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '866568df-bbfd-4574-915a-37f4a5dea939');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (39, 'craft', 'm161108_000000_new_version_format', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'c5ba6537-7a99-4e73-8a44-ffbf98a5e8ee');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (40, 'craft', 'm161109_000000_index_shuffle', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'd1b6f853-a768-4fdc-9255-839b0cc65264');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (41, 'craft', 'm161122_185500_no_craft_app', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'b9ffd26d-fd08-454f-9b68-83068a6ec1e1');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (42, 'craft', 'm161125_150752_clear_urlmanager_cache', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '840d9fc8-3faa-47b2-93a4-88e4687535f4');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (43, 'craft', 'm161220_000000_volumes_hasurl_notnull', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'a634fef5-096f-4507-84cf-321f25c37909');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (44, 'craft', 'm170114_161144_udates_permission', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '14cc8b1f-ae08-47bf-b69b-0c97d0b76078');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (45, 'craft', 'm170120_000000_schema_cleanup', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e22d8c5e-2c2c-45f7-b583-1850bcab7dc5');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (46, 'craft', 'm170126_000000_assets_focal_point', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'aed72c34-2492-4815-9405-c2a7784b1e0d');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (47, 'craft', 'm170206_142126_system_name', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '550135e9-75a3-43cb-b9c3-554f179aa302');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (48, 'craft', 'm170217_044740_category_branch_limits', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'f8141495-598b-4767-ae44-0521a3967f13');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (49, 'craft', 'm170217_120224_asset_indexing_columns', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '094b8206-6e5c-4680-b00f-d3fa476fa6d8');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (50, 'craft', 'm170223_224012_plain_text_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '6711228d-e661-45c5-91c3-577ab1a9f544');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (51, 'craft', 'm170227_120814_focal_point_percentage', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '81016221-2930-4251-837f-f5de145291b5');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (52, 'craft', 'm170228_171113_system_messages', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'afecb4c3-3722-4bff-b522-744b7f490421');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (53, 'craft', 'm170303_140500_asset_field_source_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'f5576d41-aa67-4f7c-8696-93a70c5a19e8');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (54, 'craft', 'm170306_150500_asset_temporary_uploads', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '8facdaf7-a58e-4d3d-9c63-0b94e7813322');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (55, 'craft', 'm170523_190652_element_field_layout_ids', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'cf5617f5-8251-4478-836a-c83cad848866');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (56, 'craft', 'm170621_195237_format_plugin_handles', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '991127a6-ff29-4902-8081-2276e678cfcf');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (57, 'craft', 'm170630_161027_deprecation_line_nullable', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2c438229-5963-4c9f-bce2-163e0a9f8b46');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (58, 'craft', 'm170630_161028_deprecation_changes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '70ba315f-5d06-45ac-a190-1bee0f93afda');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (59, 'craft', 'm170703_181539_plugins_table_tweaks', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'b9952c3c-dfa3-4e79-a0e0-697c09024257');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (60, 'craft', 'm170704_134916_sites_tables', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'a499682e-7367-42d2-998a-86a85dedf9b6');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (61, 'craft', 'm170706_183216_rename_sequences', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '88c4e31d-2c96-41f1-b834-0d458bd73e6c');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (62, 'craft', 'm170707_094758_delete_compiled_traits', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '3b64cc64-77d8-4592-b1a4-a5550ab5fa2c');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (63, 'craft', 'm170731_190138_drop_asset_packagist', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '23a18330-2b8b-4282-b12e-c1d19cc9e046');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (64, 'craft', 'm170810_201318_create_queue_table', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '83129064-a4b3-4661-ad58-3dd8fd2dca3d');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (65, 'craft', 'm170903_192801_longblob_for_queue_jobs', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'da676a4b-4ed0-4bf1-80a0-897b9420a306');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (66, 'craft', 'm170914_204621_asset_cache_shuffle', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'c5fb18cf-018d-4aeb-92fc-e2de94b8d3ca');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (67, 'craft', 'm171011_214115_site_groups', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '70e71150-e77f-45bf-8712-197b5849acba');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (68, 'craft', 'm171012_151440_primary_site', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '7d2ff17f-3d69-496f-a9cc-c4f704d72b1b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (69, 'craft', 'm171013_142500_transform_interlace', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'f7989a89-d6dc-4b2f-a6d4-8d88253d8c06');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (70, 'craft', 'm171016_092553_drop_position_select', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '16a2fcda-1f6e-4e6e-a74e-e30e692c4b9a');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (71, 'craft', 'm171016_221244_less_strict_translation_method', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'f02888a6-8057-4c7c-9676-4e77f05551d5');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (72, 'craft', 'm171107_000000_assign_group_permissions', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '306447b8-8249-405f-9dd9-0fe622927e98');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (73, 'craft', 'm171117_000001_templatecache_index_tune', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '02833f2d-d4ab-4667-be74-7d29da51319a');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (74, 'craft', 'm171126_105927_disabled_plugins', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '7e2be13a-ac18-46eb-b045-74c514176ed0');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (75, 'craft', 'm171130_214407_craftidtokens_table', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '8842314c-3894-4103-9d6c-88be38354f21');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (76, 'craft', 'm171202_004225_update_email_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '482863ca-4cc8-452e-abf4-bdec4b46d93f');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (77, 'craft', 'm171204_000001_templatecache_index_tune_deux', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '4e70c4d7-bb74-454c-9dd3-a25a60000ff5');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (78, 'craft', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '13029ae8-3594-4c00-8b9f-b9174e0b9f44');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (79, 'craft', 'm171218_143135_longtext_query_column', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '84c0cbb1-8f42-4a28-932b-37b228d1bc96');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (80, 'craft', 'm171231_055546_environment_variables_to_aliases', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e160319b-7290-4eb3-b498-13d798b2254d');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (81, 'craft', 'm180113_153740_drop_users_archived_column', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '7f6f34fa-97e9-4686-b8d4-128b02af943a');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (82, 'craft', 'm180122_213433_propagate_entries_setting', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '1294e9ba-876c-4835-b882-c8205d3a734b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (83, 'craft', 'm180124_230459_fix_propagate_entries_values', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '02b774dc-b638-4844-86b4-41f5e647199b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (84, 'craft', 'm180128_235202_set_tag_slugs', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '72c36972-bdba-4758-849d-1e630997f212');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (85, 'craft', 'm180202_185551_fix_focal_points', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '191b1ac6-cb46-4387-8e6f-447c3cba6311');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (86, 'craft', 'm180217_172123_tiny_ints', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '32f323d1-1157-4730-a37a-e8b56e2bcc7e');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (87, 'craft', 'm180321_233505_small_ints', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'b571b092-9f95-4f92-b278-199558490f19');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (88, 'craft', 'm180404_182320_edition_changes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'b0c101d1-71e7-4e65-93f7-54214ad49218');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (89, 'craft', 'm180411_102218_fix_db_routes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'd47fa0ed-2841-411e-b235-2e25b012a224');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (90, 'craft', 'm180416_205628_resourcepaths_table', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'dc333494-3216-48b3-a7e7-ceb4299fe1d3');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (91, 'craft', 'm180418_205713_widget_cleanup', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '3a1e7e05-6a16-44b4-82e8-9fbf5e63bfa1');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (92, 'craft', 'm180425_203349_searchable_fields', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'b5c91753-340f-4fd4-b493-f1ef4a5c9e92');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (93, 'craft', 'm180516_153000_uids_in_field_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '41394eb1-6e0d-442a-8e7b-3a67b68ffbce');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (94, 'craft', 'm180517_173000_user_photo_volume_to_uid', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '951fa762-ae79-4a30-b9a7-813f2128a651');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (95, 'craft', 'm180518_173000_permissions_to_uid', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e64aad3f-6640-4a90-994b-53f7d2ec15c4');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (96, 'craft', 'm180520_173000_matrix_context_to_uids', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'a7adb7a0-5a06-45da-9978-83af92737c40');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (97, 'craft', 'm180521_172900_project_config_table', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '665b812a-3a1b-471c-9efc-85575cabeead');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (98, 'craft', 'm180521_173000_initial_yml_and_snapshot', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '3f39c526-4a88-46bb-be5a-5725f056910b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (99, 'craft', 'm180731_162030_soft_delete_sites', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'b99ca7a7-105a-48a1-9a8c-20a8c9edd60b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (100, 'craft', 'm180810_214427_soft_delete_field_layouts', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '43b0ab8e-7149-4831-8708-19962f599e8a');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (101, 'craft', 'm180810_214439_soft_delete_elements', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2f13ac30-04fd-4b0b-b850-2a398a699e60');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (102, 'craft', 'm180824_193422_case_sensitivity_fixes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '8bbad5c5-8915-4814-8a67-a0f199a24207');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (103, 'craft', 'm180901_151639_fix_matrixcontent_tables', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'b0a22256-4c76-44ba-9573-749fd98331d5');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (104, 'craft', 'm180904_112109_permission_changes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '63f37a73-b589-4eb8-ae94-9cf79ac4abe4');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (105, 'craft', 'm180910_142030_soft_delete_sitegroups', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'a4059c96-8be9-48b1-936c-64a3c30b59d8');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (106, 'craft', 'm181011_160000_soft_delete_asset_support', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '77057102-cb3d-4f3e-8439-313bd35d07d5');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (107, 'craft', 'm181016_183648_set_default_user_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '4513dcdb-2c0f-49ad-b67a-a144410d2c0e');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (108, 'craft', 'm181017_225222_system_config_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '56d6912c-5b9e-4381-8cb7-d48956a2df07');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (109, 'craft', 'm181018_222343_drop_userpermissions_from_config', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'c6984762-af72-447b-aff7-7cf1464720a7');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (110, 'craft', 'm181029_130000_add_transforms_routes_to_config', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '9119865f-796f-4c56-a530-720998567f52');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (111, 'craft', 'm181112_203955_sequences_table', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'f542a4dc-c94f-48dd-8d86-fc85a58b3e12');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (112, 'craft', 'm181121_001712_cleanup_field_configs', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '20814f84-9816-4168-b018-eaa1a4eb4ae0');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (113, 'craft', 'm181128_193942_fix_project_config', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'ca419676-79fb-4abf-930c-5b2894a2fd8b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (114, 'craft', 'm181130_143040_fix_schema_version', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '18d9c1e2-f32c-409e-b588-4b263bbf5b44');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (115, 'craft', 'm181211_143040_fix_entry_type_uids', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'bb796fd5-29e8-4654-8c49-499ea2787d39');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (116, 'craft', 'm181217_153000_fix_structure_uids', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'f3c64843-41d5-4095-9825-5e710ce19163');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (117, 'craft', 'm190104_152725_store_licensed_plugin_editions', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '68b2c27f-f1aa-4507-9adb-6f51dbc7cf42');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (118, 'craft', 'm190108_110000_cleanup_project_config', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'ca24d100-ac8b-457d-ac34-9e45601c31e9');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (119, 'craft', 'm190108_113000_asset_field_setting_change', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '7ea5b478-a3ba-4cae-8a69-9c0b98f69be8');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (120, 'craft', 'm190109_172845_fix_colspan', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '9de59470-4b3e-4e01-b127-a85f747935d1');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (121, 'craft', 'm190110_150000_prune_nonexisting_sites', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'c1506391-094f-4949-9bbb-9780f2dcfe2e');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (122, 'craft', 'm190110_214819_soft_delete_volumes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'c5eef625-1059-4810-bd1a-5601931ebcb9');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (123, 'craft', 'm190112_124737_fix_user_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e9f12d45-63dd-4225-880a-7cf26db713c7');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (124, 'craft', 'm190112_131225_fix_field_layouts', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'ad91307d-ec2f-4865-bdba-782d8f4922dd');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (125, 'craft', 'm190112_201010_more_soft_deletes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'def10bfe-81de-48ea-9584-596abcd8faf0');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (126, 'craft', 'm190114_143000_more_asset_field_setting_changes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '735c61de-eef8-470a-b683-f8157d3a04ca');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (127, 'craft', 'm190121_120000_rich_text_config_setting', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '29d11126-e01a-43b8-a6f4-55bef7401610');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (128, 'craft', 'm190125_191628_fix_email_transport_password', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '1e6c7944-897e-47a6-b0ae-2c33d190b282');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (129, 'craft', 'm190128_181422_cleanup_volume_folders', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'ea1e1f7d-6e8f-4d64-86d7-b211f6b9014d');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (130, 'craft', 'm190205_140000_fix_asset_soft_delete_index', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '320ed7ae-a515-4b19-895a-e0df23549465');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (131, 'craft', 'm190218_143000_element_index_settings_uid', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e6e8c06d-8d70-4b38-8549-bf1c85a7e000');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (132, 'craft', 'm190312_152740_element_revisions', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '74035204-ad42-45a2-883c-e8e2a7b8df8a');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (133, 'craft', 'm190327_235137_propagation_method', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '021e0977-bacf-4336-8d13-3b6c47f663c9');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (134, 'craft', 'm190401_223843_drop_old_indexes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'ca4fcae9-5ce4-4e1b-a6e1-86635390934b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (135, 'craft', 'm190416_014525_drop_unique_global_indexes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'cb05c4e3-6944-4dae-af01-c62370ae1e4f');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (136, 'craft', 'm190417_085010_add_image_editor_permissions', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'a7952c6c-9fc2-4d03-8cc4-63e25d2272ef');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (137, 'craft', 'm190502_122019_store_default_user_group_uid', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '613f3be9-7069-4862-9beb-9b827ee90404');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (138, 'craft', 'm190504_150349_preview_targets', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'd8e1c4eb-dfa0-443e-927a-c3253ac6f6e6');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (139, 'craft', 'm190516_184711_job_progress_label', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'fa9ae2e7-077f-4369-8435-09373e4ab45c');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (140, 'craft', 'm190523_190303_optional_revision_creators', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '8cc7d05a-610a-4a66-925a-2b9d4a15483c');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (141, 'craft', 'm190529_204501_fix_duplicate_uids', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '4f257fe5-0923-4224-a180-ebce9a833425');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (142, 'craft', 'm190605_223807_unsaved_drafts', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '67ee5b33-3a4d-4d51-b22f-3f2d6135a77e');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (143, 'craft', 'm190607_230042_entry_revision_error_tables', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '6c8089e4-93df-4168-8731-7054875b81db');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (144, 'craft', 'm190608_033429_drop_elements_uid_idx', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'b4028a53-8fdc-4a42-9f5a-e193ebccb385');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (145, 'craft', 'm190617_164400_add_gqlschemas_table', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'f7992d69-f068-49ff-b4c3-ca65b33e5e64');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (146, 'craft', 'm190624_234204_matrix_propagation_method', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'cbeb8ad1-8920-40b4-9031-d559432973f6');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (147, 'craft', 'm190711_153020_drop_snapshots', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e562b46d-5750-4008-81b8-e68fc3b5b02d');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (148, 'craft', 'm190712_195914_no_draft_revisions', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'a536543d-1461-4818-a8cd-e09d2ac76d82');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (149, 'craft', 'm190723_140314_fix_preview_targets_column', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e1aa91b8-f574-4b96-bf5d-37ecf252a44f');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (150, 'craft', 'm190820_003519_flush_compiled_templates', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '0aaa517a-64a0-449a-828b-e877a1b8d527');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (151, 'craft', 'm190823_020339_optional_draft_creators', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '3aaafe2a-9a31-4c88-8a02-b89a2ce3bd40');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (152, 'craft', 'm190913_152146_update_preview_targets', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '93a62f9f-fe92-406a-8123-402cffb2052f');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (153, 'craft', 'm191107_122000_add_gql_project_config_support', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'ec002d9d-dde0-41e2-92ff-415cc1820eef');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (154, 'craft', 'm191204_085100_pack_savable_component_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'fbb0aa20-5b01-4659-b23c-f79a6df9505c');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (155, 'craft', 'm191206_001148_change_tracking', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'f2785946-e132-4b1b-802f-82ec4d1238a3');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (156, 'craft', 'm191216_191635_asset_upload_tracking', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'c80e6f35-321f-4986-bdfd-6a1732631525');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (157, 'craft', 'm191222_002848_peer_asset_permissions', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '23acb2e6-1ac7-41db-b84f-bf1ca8c52076');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (158, 'craft', 'm200127_172522_queue_channels', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e9337d98-fab1-4b27-9527-2f02892ec5c1');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (159, 'craft', 'm200211_175048_truncate_element_query_cache', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '0ccca889-40e6-40a2-a908-33f6911d3416');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (160, 'craft', 'm200213_172522_new_elements_index', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'ad665e6b-f2d9-4ebe-99a5-3d2c9fefad1e');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (161, 'craft', 'm200228_195211_long_deprecation_messages', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '67f3018d-50b8-4937-993e-5bc619327a6c');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (162, 'craft', 'm200306_054652_disabled_sites', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'd56d9728-115b-4548-a71a-f10fe2d11c5c');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (163, 'craft', 'm200522_191453_clear_template_caches', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '45aded9b-3745-4bd0-bf4c-b19eb7032f13');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (164, 'craft', 'm200606_231117_migration_tracks', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '15c51408-42b0-4aa5-bf02-9c5a5e7ce62a');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (165, 'craft', 'm200619_215137_title_translation_method', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '74bd0631-be53-4298-b288-60a9f3bf15d7');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (166, 'craft', 'm200620_005028_user_group_descriptions', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '4308ed44-e37c-4d75-8f8f-8c8970d182a6');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (167, 'craft', 'm200620_230205_field_layout_changes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '89451b9f-59e5-4f01-83f1-9b8d6f0979b0');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (168, 'craft', 'm200625_131100_move_entrytypes_to_top_project_config', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'c2bb9dce-608c-48ee-a6b7-0091ab0bc4cd');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (169, 'craft', 'm200629_112700_remove_project_config_legacy_files', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'f7778f2b-25cd-47cb-9d9b-15f82856229b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (170, 'craft', 'm200630_183000_drop_configmap', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '21f7a369-b8cf-4671-b411-2043a01a28b1');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (171, 'craft', 'm200715_113400_transform_index_error_flag', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2be62a74-29b6-4531-92ad-64657e38f572');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (172, 'craft', 'm200716_110900_replace_file_asset_permissions', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '0dca6d6e-7d91-41da-a62a-b7ed1f09b6ac');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (173, 'craft', 'm200716_153800_public_token_settings_in_project_config', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '27bbc331-53b3-4add-8ef3-b8e9cb3ad887');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (174, 'craft', 'm200720_175543_drop_unique_constraints', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e32adb3b-84ba-4ceb-a49c-d5fd5a9b9d23');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (175, 'craft', 'm200825_051217_project_config_version', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'feade35c-dd68-4acc-ba39-b700056abbb7');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (176, 'craft', 'm201116_190500_asset_title_translation_method', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'd7589eda-9e3a-409e-8f26-0e168b089c3e');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (177, 'craft', 'm201124_003555_plugin_trials', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '34bb0a29-4660-4e0d-8947-10b96b4dcd2d');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (178, 'craft', 'm210209_135503_soft_delete_field_groups', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '0693147b-8238-4553-ab16-e4294535b454');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (179, 'craft', 'm210212_223539_delete_invalid_drafts', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'e8d1337b-dcd8-469a-9b60-db7bdaffa02b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (180, 'craft', 'm210214_202731_track_saved_drafts', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '3d686543-9eb9-4f08-bb05-88557b6bb976');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (181, 'craft', 'm210223_150900_add_new_element_gql_schema_components', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'db9759f6-d674-4c1a-9245-902b03fa7840');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (182, 'craft', 'm210302_212318_canonical_elements', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '9177c506-d4a7-4e22-bd30-777c0dc80f2b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (183, 'craft', 'm210326_132000_invalidate_projectconfig_cache', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '4a7848bb-1591-433c-a39f-58ce714e1352');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (184, 'craft', 'm210329_214847_field_column_suffixes', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'd8d94fd6-02c6-4a24-bfe6-65de054aeef9');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (185, 'craft', 'm210331_220322_null_author', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '9e764148-101d-43ea-888f-75b17c998c6d');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (186, 'craft', 'm210405_231315_provisional_drafts', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '0fb398fa-a149-43e0-8441-8d88a1b1716c');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (187, 'craft', 'm210602_111300_project_config_names_in_config', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', 'd8c66853-4d62-4f24-b243-0f6055f586c0');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (188, 'craft', 'm210611_233510_default_placement_settings', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '1f260525-c49a-4a19-907a-b1d1d80076bd');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (189, 'craft', 'm210613_145522_sortable_global_sets', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '76db0f28-2451-4a01-84a0-5821c08e74a9');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (190, 'craft', 'm210613_184103_announcements', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '2022-02-27 10:06:16', '71a9d3d8-9f8a-4c04-aba3-1be22bf7098f');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (191, 'craft', 'm210829_000000_element_index_tweak', '2022-02-27 10:07:20', '2022-02-27 10:07:20', '2022-02-27 10:07:20', 'b1fa70e9-b851-48b0-b276-bba2b37fd4c1');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (192, 'craft', 'm220209_095604_add_indexes', '2022-02-27 10:11:04', '2022-02-27 10:11:04', '2022-02-27 10:11:04', '630b85c7-c93e-4648-bb6a-bec4b7264d27');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (193, 'craft', 'm220214_000000_truncate_sessions', '2022-02-27 10:11:04', '2022-02-27 10:11:04', '2022-02-27 10:11:04', '1598b684-f819-45e6-86c2-c0298ebd59e0');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (194, 'plugin:colour-swatches', 'm200911_142127_update_namespace', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '8a676d85-0725-4a0e-aa93-4535970900c5');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (195, 'plugin:cp-nav', 'Install', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', 'c3030ba0-9764-4691-9865-17e108c1efdc');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (196, 'plugin:cp-nav', 'm200101_000000_craft3', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '3912ea65-2d36-4032-a6c9-e441dfbac404');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (197, 'plugin:cp-nav', 'm200113_000000_add_pending_navigation_table', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '692caf39-d59f-4255-b0af-8898e96b53f8');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (198, 'plugin:cp-nav', 'm200119_000000_add_type', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '67ab17fd-b18d-4a9a-b9a2-845fd7fc8564');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (199, 'plugin:cp-nav', 'm200119_000000_permissions_uid', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', 'f9d4b241-ff9b-4cc3-9e06-63515f8044b3');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (200, 'plugin:cp-nav', 'm200120_000000_project_config', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '82090185-5e05-439c-945d-a75c85c9b7c3');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (201, 'plugin:cp-nav', 'm200316_000000_multi_hash', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '41f069d1-6c94-4757-b17a-b29df60c89d0');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (202, 'plugin:cp-nav', 'm200812_000000_fix_layoutid', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', 'e1ef9ecd-436b-4aca-80a0-72537b864c40');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (203, 'plugin:cp-nav', 'm200812_100000_layout_sortorder', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', 'cf9b0b4f-aaae-48d3-a537-4b21c75ea8ec');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (204, 'plugin:linkit', 'Install', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '5e7ebb3e-9ebd-49ef-acd3-2206c4f9fa99');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (205, 'plugin:linkit', 'm180423_175007_linkit_craft2', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '32e33922-8ffe-420f-9946-ade890acfc84');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (206, 'plugin:navigation', 'Install', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', 'a77dd5ec-731c-4cd0-a7dd-7e95e9d395e8');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (207, 'plugin:navigation', 'm180826_000000_propagate_nav_setting', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '877d8902-2c36-4462-92c2-6710c653884a');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (208, 'plugin:navigation', 'm180827_000000_propagate_nav_setting_additional', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '4eccc358-8380-4d59-ba82-4df4d227b0ae');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (209, 'plugin:navigation', 'm181110_000000_add_elementSiteId', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', 'fa1fc950-6fe0-4c68-85e5-d3a683ab8ca1');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (210, 'plugin:navigation', 'm181123_000000_populate_elementSiteIds', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', 'a6f9e7b3-912b-4baa-8bb9-d2378b76c9b0');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (211, 'plugin:navigation', 'm190203_000000_add_instructions', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '27b63227-5e75-4af5-bbe7-9cdc5cb49cda');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (212, 'plugin:navigation', 'm190209_000000_project_config', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '634a6724-91d9-4ac1-a37c-8463df45931e');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (213, 'plugin:navigation', 'm190223_000000_permissions', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '922cb6fe-0777-494a-82d9-af6623a02550');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (214, 'plugin:navigation', 'm190307_000000_update_field_content', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', 'dd5ee550-9f79-44c1-a1b9-f00d8b22a254');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (215, 'plugin:navigation', 'm190310_000000_migrate_elementSiteId', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', 'bedb6a4f-fd74-4b9a-8cff-60c4f5f70151');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (216, 'plugin:navigation', 'm190314_000000_soft_deletes', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '12e6ef3e-c109-473c-8010-858f98ae74af');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (217, 'plugin:navigation', 'm190315_000000_project_config', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '55acf8a6-f926-4187-b25a-14870eca161b');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (218, 'plugin:navigation', 'm191127_000000_fix_nav_handle', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '86d4e8b2-20a6-4f6d-b4a7-c3110f0b9ecc');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (219, 'plugin:navigation', 'm191230_102505_add_fieldLayoutId', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '601f36d1-b2a1-4b7e-9ac8-30783bddac0d');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (220, 'plugin:navigation', 'm200108_000000_add_attributes', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '5d74714d-de43-4df4-b9f7-f61dd3315e4d');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (221, 'plugin:navigation', 'm200108_100000_add_url_suffix', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', 'e337ceeb-cb2e-4268-a558-aec413f55599');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (222, 'plugin:navigation', 'm200108_200000_add_max_nodes', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '7ec3cecc-fe76-4f42-b55b-673bc3693e0d');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (223, 'plugin:navigation', 'm200205_000000_add_data', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '464eb816-d22c-4cc1-a6e9-9795d2fa75bd');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (224, 'plugin:navigation', 'm200810_000000_fix_elementsiteid', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '4e568d54-08b3-4ff8-af41-96f4202d14a8');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (225, 'plugin:navigation', 'm200811_000000_fix_uris', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '76ba4f8b-98bd-433a-bbaf-744162e61260');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (226, 'plugin:navigation', 'm201017_000000_add_permissions', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '92c32341-51af-4536-81c1-9cfcccf01f4e');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (227, 'plugin:navigation', 'm201018_000000_site_settings', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', 'c96a79e7-f0c2-4adc-a0a4-986595d930c8');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (228, 'plugin:redactor', 'm180430_204710_remove_old_plugins', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '29e51222-ab30-4840-99c5-f8dce00d5597');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (229, 'plugin:redactor', 'Install', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '0a6c93fa-3223-4780-a38a-d529ecfb0180');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (230, 'plugin:redactor', 'm190225_003922_split_cleanup_html_settings', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '9636ef51-f69d-4336-add3-2318c764ed92');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (231, 'plugin:snitch', 'Install', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', 'fc33e5d0-245a-41f4-acd4-90da1b1db5f1');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (232, 'plugin:snitch', 'm190408_195351_support_multiple_types', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 10:29:58', '0b156550-44b3-4d66-81a1-2d1c556fea97');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (268, 'plugin:super-table', 'Install', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '389ec414-dbc7-4a2b-8c16-cc69eb035f5e');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (269, 'plugin:super-table', 'm180210_000000_migrate_content_tables', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2666cb97-8751-49dd-8a0a-1841221e86c8');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (270, 'plugin:super-table', 'm180211_000000_type_columns', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '5775df32-0149-401b-9bbf-9d73ad0cdc0c');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (271, 'plugin:super-table', 'm180219_000000_sites', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', 'bac1d124-4668-4708-8ae9-84e1b9a9b55a');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (272, 'plugin:super-table', 'm180220_000000_fix_context', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '19a5348f-046c-4b2f-a6f4-8931ae870eef');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (273, 'plugin:super-table', 'm190117_000000_soft_deletes', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', 'e89dd5d5-c445-41b8-9705-ad26e6f64f35');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (274, 'plugin:super-table', 'm190117_000001_context_to_uids', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', 'a9d6b71b-fcfe-4e6a-b400-3f7b0401b4a4');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (275, 'plugin:super-table', 'm190120_000000_fix_supertablecontent_tables', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '6acc3ddb-e66d-48fd-b0b3-10aecb7ff1fc');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (276, 'plugin:super-table', 'm190131_000000_fix_supertable_missing_fields', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '7c334898-9b3f-4b97-a258-5f27f9691923');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (277, 'plugin:super-table', 'm190227_100000_fix_project_config', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', 'bf1ebc96-0a8f-4a35-9319-79fdfd7e96c3');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (278, 'plugin:super-table', 'm190511_100000_fix_project_config', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '0f25f13b-7f56-41b1-986f-6b089e1d325f');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (279, 'plugin:super-table', 'm190520_000000_fix_project_config', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', 'f93f9733-b361-47b0-9f7c-bb303dfcb205');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (280, 'plugin:super-table', 'm190714_000000_propagation_method', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '9cdf7f77-619b-47fa-995a-3c5052254aac');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (281, 'plugin:super-table', 'm191127_000000_fix_width', '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 10:29:59', 'caf30928-53c3-4f4c-b1e8-c87bbba72355');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (282, 'plugin:splashing-images', 'Install', '2022-02-27 12:07:49', '2022-02-27 12:07:49', '2022-02-27 12:07:49', '6ba630e0-245c-4f66-a37b-6b273e157286');
INSERT INTO public.migrations (id, track, name, "applyTime", "dateCreated", "dateUpdated", uid) VALUES (283, 'plugin:splashing-images', 'm181108_123909_addUsersTable', '2022-02-27 12:07:49', '2022-02-27 12:07:49', '2022-02-27 12:07:49', '5045b348-7c8b-483d-8dba-57cd92754977');


--
-- Data for Name: navigation_navs; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.navigation_navs (id, "structureId", name, handle, instructions, "sortOrder", "propagateNodes", "maxNodes", permissions, "siteSettings", "fieldLayoutId", "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (1, 3, 'Main Navigation', 'mainNavigation', 'This is the main navigation menu at the top of the site. For the best user experience, have no more than seven at the top level.', 1, false, NULL, '{"craft\\elements\\Asset":{"enabled":"1","permissions":"*"},"craft\\elements\\Category":{"enabled":"1","permissions":"*"},"craft\\elements\\Entry":{"enabled":"1","permissions":"*"},"craft\\elements\\Tag":{"enabled":"","permissions":"*"},"custom":{"enabled":"1"},"verbb\\navigation\\nodetypes\\PassiveType":{"enabled":"1"}}', '{"734c8496-7eca-4f66-8377-dba7854a48eb":null}', NULL, '2022-02-27 11:02:15', '2022-02-27 11:02:15', NULL, 'b78d27f7-2590-4387-b463-211c92af1f8c');
INSERT INTO public.navigation_navs (id, "structureId", name, handle, instructions, "sortOrder", "propagateNodes", "maxNodes", permissions, "siteSettings", "fieldLayoutId", "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (2, 4, 'Footer Utility Menu', 'footerUtilityMenu', 'This is the small menu in the footer for utility links such as ''terms and conditions''.', 2, false, NULL, '{"craft\\elements\\Asset":{"enabled":"1","permissions":"*"},"craft\\elements\\Category":{"enabled":"1","permissions":"*"},"craft\\elements\\Entry":{"enabled":"1","permissions":"*"},"craft\\elements\\Tag":{"enabled":"","permissions":"*"},"custom":{"enabled":"1"},"verbb\\navigation\\nodetypes\\PassiveType":{"enabled":"1"}}', '{"734c8496-7eca-4f66-8377-dba7854a48eb":null}', NULL, '2022-02-27 11:02:53', '2022-02-27 11:02:53', NULL, 'f923a20c-43a7-4100-8a3d-7ad145c846e2');


--
-- Data for Name: navigation_nodes; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.navigation_nodes (id, "elementId", "navId", "parentId", url, type, classes, "urlSuffix", "customAttributes", data, "newWindow", "deletedWithNav", "dateCreated", "dateUpdated", uid) VALUES (11, 5, 2, NULL, NULL, 'craft\elements\Entry', NULL, NULL, '[]', '[]', false, NULL, '2022-02-27 11:03:47', '2022-02-27 11:03:47', '2cb879ae-2784-458e-b279-413c65af78d6');
INSERT INTO public.navigation_nodes (id, "elementId", "navId", "parentId", url, type, classes, "urlSuffix", "customAttributes", data, "newWindow", "deletedWithNav", "dateCreated", "dateUpdated", uid) VALUES (12, 7, 2, NULL, NULL, 'craft\elements\Entry', NULL, NULL, '[]', '[]', false, NULL, '2022-02-27 11:03:49', '2022-02-27 11:03:49', '5ede165b-bbb4-423a-9d69-e23dc7ea6027');
INSERT INTO public.navigation_nodes (id, "elementId", "navId", "parentId", url, type, classes, "urlSuffix", "customAttributes", data, "newWindow", "deletedWithNav", "dateCreated", "dateUpdated", uid) VALUES (13, 2, 1, NULL, NULL, 'craft\elements\Entry', '', '', '', '[]', false, NULL, '2022-02-27 11:04:09', '2022-02-27 11:04:20', 'c84508c6-2666-43b2-b98e-896022591e44');


--
-- Data for Name: plugins; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (1, 'colour-swatches', '1.4.1.1', '1.4.1.1', 'unknown', NULL, '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 12:07:46', '54f787a6-1877-4034-9fb7-7f36c21d062d');
INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (2, 'cp-nav', '3.0.17', '2.0.7', 'unknown', NULL, '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 12:07:46', '277d1ab6-0bbd-49e6-ac29-d58effaa3cd5');
INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (3, 'cp-field-inspect', '1.2.5', '1.0.0', 'unknown', NULL, '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 12:07:46', 'b448566f-3663-405d-8e60-c96172c825b7');
INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (4, 'embeddedassets', '2.10.1', '1.0.0', 'unknown', NULL, '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 12:07:46', 'c5e8c15d-2ab4-408f-96f3-9d3cb9196e63');
INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (5, 'linkit', '1.1.12.1', '1.0.8', 'trial', NULL, '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 12:07:46', '4d44a069-0045-4235-bcc5-b24122a1ca38');
INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (6, 'matrixmate', '1.3.4', '1.0.0', 'unknown', NULL, '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 12:07:46', 'cabb0ea6-48dd-44c9-9eba-3102fb3beac4');
INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (7, 'navigation', '1.4.19', '1.0.21', 'trial', NULL, '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 12:07:46', '64d87352-e51f-4b5c-84e9-dd89624d8d88');
INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (8, 'redactor', '2.10.5', '2.3.0', 'unknown', NULL, '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 12:07:46', 'b52691ba-c851-4049-8911-a14f1335c15b');
INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (9, 'similar', '1.1.5', '1.0.0', 'unknown', NULL, '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 12:07:46', '71b9aad8-55d1-45a0-8493-7378deae0716');
INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (10, 'snitch', '3.0.4.1', '2.1.0', 'unknown', NULL, '2022-02-27 10:29:58', '2022-02-27 10:29:58', '2022-02-27 12:07:46', 'd947ee71-c133-45e1-9870-e029706ce344');
INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (12, 'super-table', '2.7.1', '2.2.1', 'unknown', NULL, '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 12:07:46', 'b9f0809a-a95c-4378-8f62-6b60451c4e8c');
INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (13, 'tag-manager', '1.0.9', '1.0.0', 'unknown', NULL, '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 12:07:46', '8cf7cb94-67e3-4d63-b454-85bd2ab5aabc');
INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (14, 'typogrify', '1.1.19', '1.0.0', 'unknown', NULL, '2022-02-27 10:29:59', '2022-02-27 10:29:59', '2022-02-27 12:07:46', 'c8da304e-0d4a-4ec2-ac38-d11cdbe3456a');
INSERT INTO public.plugins (id, handle, version, "schemaVersion", "licenseKeyStatus", "licensedEdition", "installDate", "dateCreated", "dateUpdated", uid) VALUES (15, 'splashing-images', '2.1.8', '1.2.0', 'unknown', NULL, '2022-02-27 12:07:49', '2022-02-27 12:07:49', '2022-02-27 12:07:49', '96de4357-6427-48c3-8d61-327028b2fe1d');


--
-- Data for Name: projectconfig; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.projectconfig (path, value) VALUES ('system.schemaVersion', '"3.7.33"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.colour-swatches.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.colour-swatches.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.colour-swatches.schemaVersion', '"1.4.1.1"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.cp-nav.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.cp-nav.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.cp-nav.schemaVersion', '"2.0.7"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.cp-field-inspect.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.cp-field-inspect.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.cp-field-inspect.schemaVersion', '"1.0.0"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.embeddedassets.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.embeddedassets.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.embeddedassets.schemaVersion', '"1.0.0"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.linkit.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.linkit.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.linkit.schemaVersion', '"1.0.8"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.matrixmate.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.matrixmate.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.matrixmate.schemaVersion', '"1.0.0"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.navigation.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.navigation.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.navigation.schemaVersion', '"1.0.21"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.redactor.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.redactor.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.redactor.schemaVersion', '"2.3.0"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.similar.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.similar.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.similar.schemaVersion', '"1.0.0"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.snitch.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.snitch.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.snitch.schemaVersion', '"2.1.0"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.super-table.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.super-table.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.super-table.schemaVersion', '"2.2.1"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.tag-manager.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.tag-manager.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.tag-manager.schemaVersion', '"1.0.0"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.typogrify.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.typogrify.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.typogrify.schemaVersion', '"1.0.0"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.linkit.licenseKey', '"MCOFNFB7O55Q1XRQA8JRW0AC"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.navigation.licenseKey', '"B6JEPK4VP0ROV21DE8Y8Y9T0"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.f96e45de-1941-4b23-ab25-3e4a09bb2ea1', '"Site Details"');
INSERT INTO public.projectconfig (path, value) VALUES ('fieldGroups.b4265419-d2d6-4b1c-b601-52a06c58c2f8.name', '"Globals"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.b4265419-d2d6-4b1c-b601-52a06c58c2f8', '"Globals"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.6b9d2e78-50a2-4344-89fe-16f091143755.columnSuffix', '"yefrdgxi"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.6b9d2e78-50a2-4344-89fe-16f091143755.contentColumnType', '"string(255)"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.6b9d2e78-50a2-4344-89fe-16f091143755.fieldGroup', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.6b9d2e78-50a2-4344-89fe-16f091143755.handle', '"accountUrl"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.6b9d2e78-50a2-4344-89fe-16f091143755.instructions', '"Paste the full network url."');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.6b9d2e78-50a2-4344-89fe-16f091143755.name', '"Account Url"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.6b9d2e78-50a2-4344-89fe-16f091143755.searchable', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.6b9d2e78-50a2-4344-89fe-16f091143755.settings.maxLength', '"255"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.6b9d2e78-50a2-4344-89fe-16f091143755.settings.placeholder', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.6b9d2e78-50a2-4344-89fe-16f091143755.settings.types.0', '"url"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.6b9d2e78-50a2-4344-89fe-16f091143755.translationKeyFormat', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.6b9d2e78-50a2-4344-89fe-16f091143755.translationMethod', '"none"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.6b9d2e78-50a2-4344-89fe-16f091143755.type', '"craft\\fields\\Url"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.columnSuffix', '"sfvypyqo"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.contentColumnType', '"string"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.fieldGroup', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.handle', '"network"');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.0.elements.0.fieldUid', '"4a6d78cc-1f57-4c48-b157-7320e1309ac5"');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.0.elements.0.instructions', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.0.elements.0.label', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.0.elements.0.required', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.0.elements.0.tip', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('fieldGroups.33342372-1eb6-4e99-9f15-cf18b2c29a89.name', '"Assets"');
INSERT INTO public.projectconfig (path, value) VALUES ('fieldGroups.a0b2c6ec-eb21-4e8c-ae50-05d81c71f3bc.name', '"Common"');
INSERT INTO public.projectconfig (path, value) VALUES ('siteGroups.a86d155b-8719-4b11-aee6-53718181198e.name', '"JayCraft"');
INSERT INTO public.projectconfig (path, value) VALUES ('email.fromEmail', '"hello@jaycollett.co"');
INSERT INTO public.projectconfig (path, value) VALUES ('email.fromName', '"JayCraft"');
INSERT INTO public.projectconfig (path, value) VALUES ('email.transportType', '"craft\\mail\\transportadapters\\Sendmail"');
INSERT INTO public.projectconfig (path, value) VALUES ('system.edition', '"solo"');
INSERT INTO public.projectconfig (path, value) VALUES ('system.name', '"JayCraft"');
INSERT INTO public.projectconfig (path, value) VALUES ('system.live', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('system.timeZone', '"America/Los_Angeles"');
INSERT INTO public.projectconfig (path, value) VALUES ('users.requireEmailVerification', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('users.allowPublicRegistration', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('users.defaultGroup', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('users.photoVolumeUid', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('users.photoSubpath', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.a0b2c6ec-eb21-4e8c-ae50-05d81c71f3bc', '"Common"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.a86d155b-8719-4b11-aee6-53718181198e', '"JayCraft"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.734c8496-7eca-4f66-8377-dba7854a48eb', '"JayCraft"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.7ac10b29-2dcb-4783-95fe-04423fab3110.currLabel', '"Dashboard"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.7ac10b29-2dcb-4783-95fe-04423fab3110.customIcon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.7ac10b29-2dcb-4783-95fe-04423fab3110.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.7ac10b29-2dcb-4783-95fe-04423fab3110.handle', '"dashboard"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.7ac10b29-2dcb-4783-95fe-04423fab3110.icon', '"gauge"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.7ac10b29-2dcb-4783-95fe-04423fab3110.layout', '"84a829e7-98fe-429f-9ab4-33e75d521955"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.7ac10b29-2dcb-4783-95fe-04423fab3110.newWindow', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.7ac10b29-2dcb-4783-95fe-04423fab3110.order', '1');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.7ac10b29-2dcb-4783-95fe-04423fab3110.prevLabel', '"Dashboard"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.7ac10b29-2dcb-4783-95fe-04423fab3110.prevUrl', '"dashboard"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.7ac10b29-2dcb-4783-95fe-04423fab3110.type', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.7ac10b29-2dcb-4783-95fe-04423fab3110.url', '"dashboard"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.7295f06d-67a8-4ad1-91aa-df78d4ceb502', '"Site"');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.autocapitalize', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.autocomplete', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.autocorrect', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.class', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.disabled', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.id', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.instructions', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.label', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.max', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.min', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.name', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.orientation', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.placeholder', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.readonly', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.requirable', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.size', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.step', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.tip', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.title', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.type', '"craft\\fieldlayoutelements\\EntryTitleField"');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.warning', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.elements.0.width', '100');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.name', '"Content"');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.fieldLayouts.9514ddca-f611-4aff-939c-9db35f505618.tabs.0.sortOrder', '1');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.handle', '"standardContent"');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.hasTitleField', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.name', '"Standard Content"');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.section', '"7295f06d-67a8-4ad1-91aa-df78d4ceb502"');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.sortOrder', '1');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.titleFormat', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.titleTranslationKeyFormat', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('entryTypes.0b9c30a7-78a4-495f-b803-a3e170b972b8.titleTranslationMethod', '"site"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.0b9c30a7-78a4-495f-b803-a3e170b972b8', '"Standard Content"');
INSERT INTO public.projectconfig (path, value) VALUES ('sections.7295f06d-67a8-4ad1-91aa-df78d4ceb502.defaultPlacement', '"end"');
INSERT INTO public.projectconfig (path, value) VALUES ('sections.7295f06d-67a8-4ad1-91aa-df78d4ceb502.enableVersioning', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('sections.7295f06d-67a8-4ad1-91aa-df78d4ceb502.handle', '"site"');
INSERT INTO public.projectconfig (path, value) VALUES ('sections.7295f06d-67a8-4ad1-91aa-df78d4ceb502.name', '"Site"');
INSERT INTO public.projectconfig (path, value) VALUES ('sections.7295f06d-67a8-4ad1-91aa-df78d4ceb502.propagationMethod', '"all"');
INSERT INTO public.projectconfig (path, value) VALUES ('sections.7295f06d-67a8-4ad1-91aa-df78d4ceb502.siteSettings.734c8496-7eca-4f66-8377-dba7854a48eb.enabledByDefault', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('sections.7295f06d-67a8-4ad1-91aa-df78d4ceb502.siteSettings.734c8496-7eca-4f66-8377-dba7854a48eb.hasUrls', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('sections.7295f06d-67a8-4ad1-91aa-df78d4ceb502.siteSettings.734c8496-7eca-4f66-8377-dba7854a48eb.template', '"site/_index.twig"');
INSERT INTO public.projectconfig (path, value) VALUES ('sections.7295f06d-67a8-4ad1-91aa-df78d4ceb502.siteSettings.734c8496-7eca-4f66-8377-dba7854a48eb.uriFormat', '"{parentUri}/{slug}"');
INSERT INTO public.projectconfig (path, value) VALUES ('sections.7295f06d-67a8-4ad1-91aa-df78d4ceb502.structure.maxLevels', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('sections.7295f06d-67a8-4ad1-91aa-df78d4ceb502.structure.uid', '"33ddf800-f394-4193-8e7e-263151808a1a"');
INSERT INTO public.projectconfig (path, value) VALUES ('sections.7295f06d-67a8-4ad1-91aa-df78d4ceb502.type', '"structure"');
INSERT INTO public.projectconfig (path, value) VALUES ('sites.734c8496-7eca-4f66-8377-dba7854a48eb.baseUrl', '"$PRIMARY_SITE_URL"');
INSERT INTO public.projectconfig (path, value) VALUES ('sites.734c8496-7eca-4f66-8377-dba7854a48eb.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('sites.734c8496-7eca-4f66-8377-dba7854a48eb.handle', '"default"');
INSERT INTO public.projectconfig (path, value) VALUES ('sites.734c8496-7eca-4f66-8377-dba7854a48eb.hasUrls', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('sites.734c8496-7eca-4f66-8377-dba7854a48eb.language', '"en-GB"');
INSERT INTO public.projectconfig (path, value) VALUES ('sites.734c8496-7eca-4f66-8377-dba7854a48eb.name', '"JayCraft"');
INSERT INTO public.projectconfig (path, value) VALUES ('sites.734c8496-7eca-4f66-8377-dba7854a48eb.primary', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('sites.734c8496-7eca-4f66-8377-dba7854a48eb.siteGroup', '"a86d155b-8719-4b11-aee6-53718181198e"');
INSERT INTO public.projectconfig (path, value) VALUES ('sites.734c8496-7eca-4f66-8377-dba7854a48eb.sortOrder', '1');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.32d62ced-e5c1-485c-a311-5f302c73ace9.currLabel', '"Content"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.32d62ced-e5c1-485c-a311-5f302c73ace9.customIcon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.32d62ced-e5c1-485c-a311-5f302c73ace9.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.32d62ced-e5c1-485c-a311-5f302c73ace9.handle', '"divider"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.32d62ced-e5c1-485c-a311-5f302c73ace9.icon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.32d62ced-e5c1-485c-a311-5f302c73ace9.layout', '"84a829e7-98fe-429f-9ab4-33e75d521955"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.32d62ced-e5c1-485c-a311-5f302c73ace9.newWindow', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.32d62ced-e5c1-485c-a311-5f302c73ace9.order', '2');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.32d62ced-e5c1-485c-a311-5f302c73ace9.prevLabel', '"Divider"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.32d62ced-e5c1-485c-a311-5f302c73ace9.prevUrl', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.32d62ced-e5c1-485c-a311-5f302c73ace9.type', '"divider"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.field', '"1c3609c8-6750-4ecd-8f5b-da0b920d40ea"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.0.fieldUid', '"ec6081a9-87b4-42ae-b261-6fdd2d496956"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.0.instructions', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.0.label', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.0.required', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.0.tip', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.0.type', '"craft\\fieldlayoutelements\\CustomField"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.0.warning', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.0.width', '100');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.1.fieldUid', '"6b9d2e78-50a2-4344-89fe-16f091143755"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.1.instructions', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.1.label', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.1.required', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.1.tip', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.1.type', '"craft\\fieldlayoutelements\\CustomField"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.1.warning', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.elements.1.width', '100');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.name', '"Content"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fieldLayouts.b1791de0-6eff-4be5-8272-0a4aa80e92f3.tabs.0.sortOrder', '1');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.4a6d78cc-1f57-4c48-b157-7320e1309ac5.columnSuffix', '"cpisbmwq"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.4a6d78cc-1f57-4c48-b157-7320e1309ac5.contentColumnType', '"string"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.4a6d78cc-1f57-4c48-b157-7320e1309ac5.fieldGroup', '"b4265419-d2d6-4b1c-b601-52a06c58c2f8"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.4a6d78cc-1f57-4c48-b157-7320e1309ac5.handle', '"primaryEmailAddress"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.4a6d78cc-1f57-4c48-b157-7320e1309ac5.instructions', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.4a6d78cc-1f57-4c48-b157-7320e1309ac5.name', '"Primary Email Address"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.4a6d78cc-1f57-4c48-b157-7320e1309ac5.searchable', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.4a6d78cc-1f57-4c48-b157-7320e1309ac5.settings.placeholder', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.4a6d78cc-1f57-4c48-b157-7320e1309ac5.translationKeyFormat', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.4a6d78cc-1f57-4c48-b157-7320e1309ac5.translationMethod', '"none"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.4a6d78cc-1f57-4c48-b157-7320e1309ac5.type', '"craft\\fields\\Email"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.4a6d78cc-1f57-4c48-b157-7320e1309ac5', '"Primary Email Address"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.handle', '"mainNavigation"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.instructions', '"This is the main navigation menu at the top of the site. For the best user experience, have no more than seven at the top level."');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.maxNodes', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.name', '"Main Navigation"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.permissions.craft\elements\Asset.enabled', '"1"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.permissions.craft\elements\Asset.permissions', '"*"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.permissions.craft\elements\Category.enabled', '"1"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.permissions.craft\elements\Category.permissions', '"*"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.permissions.craft\elements\Entry.enabled', '"1"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.permissions.craft\elements\Entry.permissions', '"*"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.permissions.craft\elements\Tag.enabled', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.permissions.craft\elements\Tag.permissions', '"*"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.permissions.custom.enabled', '"1"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.permissions.verbb\navigation\nodetypes\PassiveType.enabled', '"1"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.instructions', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.name', '"Network"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.searchable', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.optgroups', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.0.__assoc__.0.0', '"label"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.0.__assoc__.0.1', '"Facebook"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.0.__assoc__.1.0', '"value"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.0.__assoc__.1.1', '"facebook"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.0.__assoc__.2.0', '"default"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.0.__assoc__.2.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.1.__assoc__.0.0', '"label"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.1.__assoc__.0.1', '"Twitter"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.1.__assoc__.1.0', '"value"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.1.__assoc__.1.1', '"twitter"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.1.__assoc__.2.0', '"default"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.1.__assoc__.2.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.2.__assoc__.0.0', '"label"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.2.__assoc__.0.1', '"Instagram"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.2.__assoc__.1.0', '"value"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.2.__assoc__.1.1', '"instagram"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.2.__assoc__.2.0', '"default"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.2.__assoc__.2.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.3.__assoc__.0.0', '"label"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.3.__assoc__.0.1', '"YouTube"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.3.__assoc__.1.0', '"value"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.3.__assoc__.1.1', '"youtube"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.3.__assoc__.2.0', '"default"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.3.__assoc__.2.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.4.__assoc__.0.0', '"label"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.4.__assoc__.0.1', '"LinkedIn"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.4.__assoc__.1.0', '"value"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.4.__assoc__.1.1', '"linkedin"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.4.__assoc__.2.0', '"default"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.4.__assoc__.2.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.5.__assoc__.0.0', '"label"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.5.__assoc__.0.1', '"Spotify"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.5.__assoc__.1.0', '"value"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.5.__assoc__.1.1', '"spotify"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.5.__assoc__.2.0', '"default"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.5.__assoc__.2.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.6.__assoc__.0.0', '"label"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.6.__assoc__.0.1', '"Pinterest"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.6.__assoc__.1.0', '"value"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.6.__assoc__.1.1', '"pinterest"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.6.__assoc__.2.0', '"default"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.6.__assoc__.2.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.7.__assoc__.0.0', '"label"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.7.__assoc__.0.1', '"SoundCloud"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.7.__assoc__.1.0', '"value"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.7.__assoc__.1.1', '"soundcloud"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.7.__assoc__.2.0', '"default"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.7.__assoc__.2.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.8.__assoc__.0.0', '"label"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.8.__assoc__.0.1', '"Vimeo"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.8.__assoc__.1.0', '"value"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.8.__assoc__.1.1', '"vimeo"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.8.__assoc__.2.0', '"default"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.8.__assoc__.2.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.9.__assoc__.0.0', '"label"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.9.__assoc__.0.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.9.__assoc__.1.0', '"value"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.9.__assoc__.1.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.9.__assoc__.2.0', '"default"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.settings.options.9.__assoc__.2.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.translationKeyFormat', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.translationMethod', '"none"');
INSERT INTO public.projectconfig (path, value) VALUES ('superTableBlockTypes.1e04ba6e-bfb4-4cd6-a004-b38120769120.fields.ec6081a9-87b4-42ae-b261-6fdd2d496956.type', '"craft\\fields\\Dropdown"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.columnSuffix', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.contentColumnType', '"string"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.fieldGroup', '"b4265419-d2d6-4b1c-b601-52a06c58c2f8"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.handle', '"socialNetworks"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.instructions', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.name', '"Social Networks"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.searchable', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.columns.__assoc__.0.0', '"69634719-284a-4131-97f3-c1765dbb0a7f"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.columns.__assoc__.0.1.__assoc__.0.0', '"width"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.columns.__assoc__.0.1.__assoc__.0.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.columns.__assoc__.1.0', '"deb21e5d-868e-403f-a997-68474902a793"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.columns.__assoc__.1.1.__assoc__.0.0', '"width"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.columns.__assoc__.1.1.__assoc__.0.1', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.contentTable', '"{{%stc_socialnetworks}}"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.fieldLayout', '"row"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.maxRows', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.minRows', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.placeholderKey', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.propagationKeyFormat', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.propagationMethod', '"all"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.selectionLabel', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.settings.staticField', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.translationKeyFormat', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.translationMethod', '"site"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1c3609c8-6750-4ecd-8f5b-da0b920d40ea.type', '"verbb\\supertable\\fields\\SuperTableField"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.1c3609c8-6750-4ecd-8f5b-da0b920d40ea', '"Social Networks"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.6b9d2e78-50a2-4344-89fe-16f091143755', '"Account Url"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.ec6081a9-87b4-42ae-b261-6fdd2d496956', '"Network"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.32d62ced-e5c1-485c-a311-5f302c73ace9.url', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.0.elements.0.type', '"craft\\fieldlayoutelements\\CustomField"');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.0.elements.0.warning', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.0.elements.0.width', '100');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.0.name', '"Details"');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.0.sortOrder', '1');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.1.elements.0.fieldUid', '"1c3609c8-6750-4ecd-8f5b-da0b920d40ea"');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.1.elements.0.instructions', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.1.elements.0.label', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.1.elements.0.required', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.1.elements.0.tip', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.1.elements.0.type', '"craft\\fieldlayoutelements\\CustomField"');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.1.elements.0.warning', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.1.elements.0.width', '100');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.1.name', '"Social Networks"');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.fieldLayouts.052e65a8-59b8-46ca-acf2-fe7c7edf671f.tabs.1.sortOrder', '2');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.handle', '"siteDetails"');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.name', '"Site Details"');
INSERT INTO public.projectconfig (path, value) VALUES ('globalSets.f96e45de-1941-4b23-ab25-3e4a09bb2ea1.sortOrder', '1');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.propagateNodes', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.siteSettings.734c8496-7eca-4f66-8377-dba7854a48eb', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.sortOrder', '1');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.structure.maxLevels', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.b78d27f7-2590-4387-b463-211c92af1f8c.structure.uid', '"8d7fcb71-2cd9-49dd-834e-ff4f38ed5aa6"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.b78d27f7-2590-4387-b463-211c92af1f8c', '"Main Navigation"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.handle', '"footerUtilityMenu"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.instructions', '"This is the small menu in the footer for utility links such as ''terms and conditions''."');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.maxNodes', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.name', '"Footer Utility Menu"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.permissions.craft\elements\Asset.enabled', '"1"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.permissions.craft\elements\Asset.permissions', '"*"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.permissions.craft\elements\Category.enabled', '"1"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.permissions.craft\elements\Category.permissions', '"*"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.permissions.craft\elements\Entry.enabled', '"1"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.permissions.craft\elements\Entry.permissions', '"*"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.permissions.craft\elements\Tag.enabled', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.permissions.craft\elements\Tag.permissions', '"*"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.permissions.custom.enabled', '"1"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.permissions.verbb\navigation\nodetypes\PassiveType.enabled', '"1"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.propagateNodes', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.siteSettings.734c8496-7eca-4f66-8377-dba7854a48eb', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.sortOrder', '2');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.structure.maxLevels', '"1"');
INSERT INTO public.projectconfig (path, value) VALUES ('navigation.navs.f923a20c-43a7-4100-8a3d-7ad145c846e2.structure.uid', '"25203337-c91d-40a9-8aab-7e8d3bb31b5a"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.f923a20c-43a7-4100-8a3d-7ad145c846e2', '"Footer Utility Menu"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.14b434ef-d992-4dea-a7d3-0d2e59a61c11', '"Uploads"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5051c52d-913b-43d7-a9a9-9cbb3a4ac916.currLabel', '"Utilities"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5051c52d-913b-43d7-a9a9-9cbb3a4ac916.customIcon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5051c52d-913b-43d7-a9a9-9cbb3a4ac916.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5051c52d-913b-43d7-a9a9-9cbb3a4ac916.handle', '"utilities"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5051c52d-913b-43d7-a9a9-9cbb3a4ac916.icon', '"tool"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5051c52d-913b-43d7-a9a9-9cbb3a4ac916.layout', '"84a829e7-98fe-429f-9ab4-33e75d521955"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5051c52d-913b-43d7-a9a9-9cbb3a4ac916.newWindow', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5051c52d-913b-43d7-a9a9-9cbb3a4ac916.order', '12');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5051c52d-913b-43d7-a9a9-9cbb3a4ac916.prevLabel', '"Utilities"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5051c52d-913b-43d7-a9a9-9cbb3a4ac916.prevUrl', '"utilities"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5051c52d-913b-43d7-a9a9-9cbb3a4ac916.type', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5051c52d-913b-43d7-a9a9-9cbb3a4ac916.url', '"utilities"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1101d5cb-40e5-437f-a8a1-e36fb61db131.currLabel', '"Plugin Store"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1101d5cb-40e5-437f-a8a1-e36fb61db131.customIcon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1101d5cb-40e5-437f-a8a1-e36fb61db131.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1101d5cb-40e5-437f-a8a1-e36fb61db131.handle', '"plugin-store"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1101d5cb-40e5-437f-a8a1-e36fb61db131.icon', '"plugin"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1101d5cb-40e5-437f-a8a1-e36fb61db131.layout', '"84a829e7-98fe-429f-9ab4-33e75d521955"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1101d5cb-40e5-437f-a8a1-e36fb61db131.newWindow', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1101d5cb-40e5-437f-a8a1-e36fb61db131.order', '13');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1101d5cb-40e5-437f-a8a1-e36fb61db131.prevLabel', '"Plugin Store"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1101d5cb-40e5-437f-a8a1-e36fb61db131.prevUrl', '"plugin-store"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1101d5cb-40e5-437f-a8a1-e36fb61db131.type', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1101d5cb-40e5-437f-a8a1-e36fb61db131.url', '"plugin-store"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.63cec81f-9a6b-407e-9c38-13af8606adce.currLabel', '"Assets"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.63cec81f-9a6b-407e-9c38-13af8606adce.customIcon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.63cec81f-9a6b-407e-9c38-13af8606adce.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.63cec81f-9a6b-407e-9c38-13af8606adce.handle', '"divider"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.63cec81f-9a6b-407e-9c38-13af8606adce.icon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.63cec81f-9a6b-407e-9c38-13af8606adce.layout', '"84a829e7-98fe-429f-9ab4-33e75d521955"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.63cec81f-9a6b-407e-9c38-13af8606adce.newWindow', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.63cec81f-9a6b-407e-9c38-13af8606adce.order', '7');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.63cec81f-9a6b-407e-9c38-13af8606adce.prevLabel', '"Divider"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.63cec81f-9a6b-407e-9c38-13af8606adce.prevUrl', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.63cec81f-9a6b-407e-9c38-13af8606adce.type', '"divider"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.63cec81f-9a6b-407e-9c38-13af8606adce.url', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5f352fe0-8d0e-4287-abbc-800d92f05710.currLabel', '"Uploads"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5f352fe0-8d0e-4287-abbc-800d92f05710.customIcon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5f352fe0-8d0e-4287-abbc-800d92f05710.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5f352fe0-8d0e-4287-abbc-800d92f05710.handle', '"assets"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5f352fe0-8d0e-4287-abbc-800d92f05710.icon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5f352fe0-8d0e-4287-abbc-800d92f05710.layout', '"84a829e7-98fe-429f-9ab4-33e75d521955"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5f352fe0-8d0e-4287-abbc-800d92f05710.newWindow', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5f352fe0-8d0e-4287-abbc-800d92f05710.order', '8');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5f352fe0-8d0e-4287-abbc-800d92f05710.prevLabel', '"Assets"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5f352fe0-8d0e-4287-abbc-800d92f05710.prevUrl', '"assets"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5f352fe0-8d0e-4287-abbc-800d92f05710.type', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.5f352fe0-8d0e-4287-abbc-800d92f05710.url', '"assets"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.8fb38aa7-1504-4cd1-924f-2b417c106df9.currLabel', '"Unsplash Images"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.8fb38aa7-1504-4cd1-924f-2b417c106df9.customIcon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.8fb38aa7-1504-4cd1-924f-2b417c106df9.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.8fb38aa7-1504-4cd1-924f-2b417c106df9.handle', '"splashing-images"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.8fb38aa7-1504-4cd1-924f-2b417c106df9.icon', '"/app/vendor/studioespresso/craft-splashingimages/src/icon-mask.svg"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.8fb38aa7-1504-4cd1-924f-2b417c106df9.layout', '"84a829e7-98fe-429f-9ab4-33e75d521955"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.8fb38aa7-1504-4cd1-924f-2b417c106df9.newWindow', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.8fb38aa7-1504-4cd1-924f-2b417c106df9.order', '9');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.8fb38aa7-1504-4cd1-924f-2b417c106df9.prevLabel', '"Unsplash Images"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.8fb38aa7-1504-4cd1-924f-2b417c106df9.prevUrl', '"splashing-images"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.8fb38aa7-1504-4cd1-924f-2b417c106df9.type', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.8fb38aa7-1504-4cd1-924f-2b417c106df9.url', '"splashing-images"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.b0de48ad-b56c-4008-8ebd-b935d661a3b2.currLabel', '"Settings"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.b0de48ad-b56c-4008-8ebd-b935d661a3b2.customIcon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.b0de48ad-b56c-4008-8ebd-b935d661a3b2.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.b0de48ad-b56c-4008-8ebd-b935d661a3b2.handle', '"settings"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.b0de48ad-b56c-4008-8ebd-b935d661a3b2.icon', '"settings"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.b0de48ad-b56c-4008-8ebd-b935d661a3b2.layout', '"84a829e7-98fe-429f-9ab4-33e75d521955"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.b0de48ad-b56c-4008-8ebd-b935d661a3b2.newWindow', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.b0de48ad-b56c-4008-8ebd-b935d661a3b2.order', '11');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.b0de48ad-b56c-4008-8ebd-b935d661a3b2.prevLabel', '"Settings"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.b0de48ad-b56c-4008-8ebd-b935d661a3b2.prevUrl', '"settings"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.b0de48ad-b56c-4008-8ebd-b935d661a3b2.type', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.b0de48ad-b56c-4008-8ebd-b935d661a3b2.url', '"settings"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.33342372-1eb6-4e99-9f15-cf18b2c29a89', '"Assets"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.columnSuffix', '"wsbceffg"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.contentColumnType', '"text"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.fieldGroup', '"33342372-1eb6-4e99-9f15-cf18b2c29a89"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.handle', '"altText"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.instructions', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.name', '"Alt Text"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.searchable', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.settings.byteLimit', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.settings.charLimit', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.settings.code', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.settings.columnType', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.settings.initialRows', '"4"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.settings.multiline', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.settings.placeholder', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.settings.uiMode', '"normal"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.translationKeyFormat', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.translationMethod', '"none"');
INSERT INTO public.projectconfig (path, value) VALUES ('fields.1bf85d47-1766-405b-a7a9-1d8a6985d1a3.type', '"craft\\fields\\PlainText"');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.1bf85d47-1766-405b-a7a9-1d8a6985d1a3', '"Alt Text"');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.autocapitalize', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.autocomplete', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.autocorrect', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.class', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.disabled', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.id', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.instructions', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.label', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.max', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.min', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.name', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.orientation', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.placeholder', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.readonly', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.requirable', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.size', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.step', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.tip', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.title', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.type', '"craft\\fieldlayoutelements\\AssetTitleField"');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.warning', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.0.width', '100');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.1.fieldUid', '"1bf85d47-1766-405b-a7a9-1d8a6985d1a3"');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.1.instructions', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.1.label', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.1.required', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.1.tip', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.1.type', '"craft\\fieldlayoutelements\\CustomField"');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.1.warning', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.elements.1.width', '100');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.name', '"Content"');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.fieldLayouts.f75bd182-d4de-4043-98d7-c1d1b9a016f7.tabs.0.sortOrder', '1');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.handle', '"uploads"');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.hasUrls', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.name', '"Uploads"');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.settings.path', '"@uploadsRoot"');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.sortOrder', '1');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.titleTranslationKeyFormat', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.titleTranslationMethod', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.type', '"craft\\volumes\\Local"');
INSERT INTO public.projectconfig (path, value) VALUES ('volumes.14b434ef-d992-4dea-a7d3-0d2e59a61c11.url', '"$ASSET_BASE_URL"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.splashing-images.edition', '"standard"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.splashing-images.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.splashing-images.schemaVersion', '"1.2.0"');
INSERT INTO public.projectconfig (path, value) VALUES ('dateModified', '1645964017');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.cp-nav.settings.originalNavHash.__assoc__.0.0', '"edf96a0e-8acf-4100-9ce3-d144ed3394fc"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.cp-nav.settings.originalNavHash.__assoc__.0.1', '"W3sibGFiZWwiOiJEYXNoYm9hcmQiLCJ1cmwiOiJkYXNoYm9hcmQiLCJmb250SWNvbiI6ImdhdWdlIn0seyJsYWJlbCI6IkVudHJpZXMiLCJ1cmwiOiJlbnRyaWVzIiwiZm9udEljb24iOiJzZWN0aW9uIn0seyJsYWJlbCI6Ikdsb2JhbHMiLCJ1cmwiOiJnbG9iYWxzIiwiZm9udEljb24iOiJnbG9iZSJ9LHsibGFiZWwiOiJBc3NldHMiLCJ1cmwiOiJhc3NldHMiLCJmb250SWNvbiI6ImFzc2V0cyJ9LHsibGFiZWwiOiJOYXZpZ2F0aW9uIiwidXJsIjoibmF2aWdhdGlvbiIsImljb24iOiIvYXBwL3ZlbmRvci92ZXJiYi9uYXZpZ2F0aW9uL3NyYy9pY29uLW1hc2suc3ZnIn0seyJsYWJlbCI6IlVuc3BsYXNoIEltYWdlcyIsInVybCI6InNwbGFzaGluZy1pbWFnZXMiLCJpY29uIjoiL2FwcC92ZW5kb3Ivc3R1ZGlvZXNwcmVzc28vY3JhZnQtc3BsYXNoaW5naW1hZ2VzL3NyYy9pY29uLW1hc2suc3ZnIn0seyJsYWJlbCI6IlRhZ3MiLCJ1cmwiOiJ0YWdzIiwiaWNvbiI6Ii9hcHAvdmVuZG9yL2V0aGVyL3RhZ3Mvc3JjL2ljb24tbWFzay5zdmciLCJpZCI6InRhZy1tYW5hZ2VyIn0seyJ1cmwiOiJ1dGlsaXRpZXMiLCJsYWJlbCI6IlV0aWxpdGllcyIsImZvbnRJY29uIjoidG9vbCIsImJhZGdlQ291bnQiOjB9LHsidXJsIjoic2V0dGluZ3MiLCJsYWJlbCI6IlNldHRpbmdzIiwiZm9udEljb24iOiJzZXR0aW5ncyJ9LHsidXJsIjoicGx1Z2luLXN0b3JlIiwibGFiZWwiOiJQbHVnaW4gU3RvcmUiLCJmb250SWNvbiI6InBsdWdpbiJ9XQ=="');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dfac18b8-8f4a-4b8d-b567-e562277a56ad.currLabel', '"Admin"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.splashing-images.settings.destination', '"1"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.splashing-images.settings.folder', '"unsplash"');
INSERT INTO public.projectconfig (path, value) VALUES ('plugins.splashing-images.settings.pluginLabel', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dfac18b8-8f4a-4b8d-b567-e562277a56ad.customIcon', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.layouts.84a829e7-98fe-429f-9ab4-33e75d521955.isDefault', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.layouts.84a829e7-98fe-429f-9ab4-33e75d521955.name', '"Default"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.layouts.84a829e7-98fe-429f-9ab4-33e75d521955.permissions', '"null"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.layouts.84a829e7-98fe-429f-9ab4-33e75d521955.sortOrder', '1');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dfac18b8-8f4a-4b8d-b567-e562277a56ad.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dfac18b8-8f4a-4b8d-b567-e562277a56ad.handle', '"divider"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dfac18b8-8f4a-4b8d-b567-e562277a56ad.icon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dfac18b8-8f4a-4b8d-b567-e562277a56ad.layout', '"84a829e7-98fe-429f-9ab4-33e75d521955"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dfac18b8-8f4a-4b8d-b567-e562277a56ad.newWindow', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dfac18b8-8f4a-4b8d-b567-e562277a56ad.order', '10');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dfac18b8-8f4a-4b8d-b567-e562277a56ad.prevLabel', '"Divider"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dfac18b8-8f4a-4b8d-b567-e562277a56ad.prevUrl', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dfac18b8-8f4a-4b8d-b567-e562277a56ad.type', '"divider"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dfac18b8-8f4a-4b8d-b567-e562277a56ad.url', 'null');
INSERT INTO public.projectconfig (path, value) VALUES ('meta.__names__.84a829e7-98fe-429f-9ab4-33e75d521955', '"Default"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dd6ff908-7f68-489f-acd0-2725869498f7.currLabel', '"Entries"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dd6ff908-7f68-489f-acd0-2725869498f7.customIcon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dd6ff908-7f68-489f-acd0-2725869498f7.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dd6ff908-7f68-489f-acd0-2725869498f7.handle', '"entries"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dd6ff908-7f68-489f-acd0-2725869498f7.icon', '"section"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dd6ff908-7f68-489f-acd0-2725869498f7.layout', '"84a829e7-98fe-429f-9ab4-33e75d521955"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dd6ff908-7f68-489f-acd0-2725869498f7.newWindow', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dd6ff908-7f68-489f-acd0-2725869498f7.order', '3');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dd6ff908-7f68-489f-acd0-2725869498f7.prevLabel', '"Entries"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dd6ff908-7f68-489f-acd0-2725869498f7.prevUrl', '"entries"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dd6ff908-7f68-489f-acd0-2725869498f7.type', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.dd6ff908-7f68-489f-acd0-2725869498f7.url', '"entries"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1f41e4c6-f9e7-4cec-a072-ef3b13283a90.currLabel', '"Globals"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1f41e4c6-f9e7-4cec-a072-ef3b13283a90.customIcon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1f41e4c6-f9e7-4cec-a072-ef3b13283a90.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1f41e4c6-f9e7-4cec-a072-ef3b13283a90.handle', '"globals"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1f41e4c6-f9e7-4cec-a072-ef3b13283a90.icon', '"globe"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1f41e4c6-f9e7-4cec-a072-ef3b13283a90.layout', '"84a829e7-98fe-429f-9ab4-33e75d521955"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1f41e4c6-f9e7-4cec-a072-ef3b13283a90.newWindow', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1f41e4c6-f9e7-4cec-a072-ef3b13283a90.order', '4');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1f41e4c6-f9e7-4cec-a072-ef3b13283a90.prevLabel', '"Globals"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1f41e4c6-f9e7-4cec-a072-ef3b13283a90.prevUrl', '"globals"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1f41e4c6-f9e7-4cec-a072-ef3b13283a90.type', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.1f41e4c6-f9e7-4cec-a072-ef3b13283a90.url', '"globals"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.45c0ed88-2e24-4d81-9f39-cdb492a02c33.currLabel', '"Navigation"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.45c0ed88-2e24-4d81-9f39-cdb492a02c33.customIcon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.45c0ed88-2e24-4d81-9f39-cdb492a02c33.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.45c0ed88-2e24-4d81-9f39-cdb492a02c33.handle', '"navigation"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.45c0ed88-2e24-4d81-9f39-cdb492a02c33.icon', '"/app/vendor/verbb/navigation/src/icon-mask.svg"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.45c0ed88-2e24-4d81-9f39-cdb492a02c33.layout', '"84a829e7-98fe-429f-9ab4-33e75d521955"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.45c0ed88-2e24-4d81-9f39-cdb492a02c33.newWindow', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.45c0ed88-2e24-4d81-9f39-cdb492a02c33.order', '5');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.45c0ed88-2e24-4d81-9f39-cdb492a02c33.prevLabel', '"Navigation"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.45c0ed88-2e24-4d81-9f39-cdb492a02c33.prevUrl', '"navigation"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.45c0ed88-2e24-4d81-9f39-cdb492a02c33.type', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.45c0ed88-2e24-4d81-9f39-cdb492a02c33.url', '"navigation"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.a308c269-3a36-4c9e-a2ba-b4afd75ea59b.currLabel', '"Tags"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.a308c269-3a36-4c9e-a2ba-b4afd75ea59b.customIcon', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.a308c269-3a36-4c9e-a2ba-b4afd75ea59b.enabled', 'true');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.a308c269-3a36-4c9e-a2ba-b4afd75ea59b.handle', '"tags"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.a308c269-3a36-4c9e-a2ba-b4afd75ea59b.icon', '"/app/vendor/ether/tags/src/icon-mask.svg"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.a308c269-3a36-4c9e-a2ba-b4afd75ea59b.layout', '"84a829e7-98fe-429f-9ab4-33e75d521955"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.a308c269-3a36-4c9e-a2ba-b4afd75ea59b.newWindow', 'false');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.a308c269-3a36-4c9e-a2ba-b4afd75ea59b.order', '6');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.a308c269-3a36-4c9e-a2ba-b4afd75ea59b.prevLabel', '"Tags"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.a308c269-3a36-4c9e-a2ba-b4afd75ea59b.prevUrl', '"tags"');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.a308c269-3a36-4c9e-a2ba-b4afd75ea59b.type', '""');
INSERT INTO public.projectconfig (path, value) VALUES ('cp-nav.navigations.a308c269-3a36-4c9e-a2ba-b4afd75ea59b.url', '"tags"');


--
-- Data for Name: queue; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: relations; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: revisions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.revisions (id, "sourceId", "creatorId", num, notes) VALUES (1, 2, 1, 1, '');
INSERT INTO public.revisions (id, "sourceId", "creatorId", num, notes) VALUES (2, 5, 1, 1, '');
INSERT INTO public.revisions (id, "sourceId", "creatorId", num, notes) VALUES (3, 7, 1, 1, NULL);
INSERT INTO public.revisions (id, "sourceId", "creatorId", num, notes) VALUES (4, 7, 1, 2, 'Applied “Draft 1”');


--
-- Data for Name: searchindex; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (1, 'username', 0, 2, ' admin ', '''admin''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (1, 'firstname', 0, 2, '', '');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (1, 'lastname', 0, 2, '', '');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (1, 'fullname', 0, 2, '', '');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (1, 'email', 0, 2, ' hello jaycollett co ', '''co'' ''hello'' ''jaycollett''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (1, 'slug', 0, 2, '', '');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (2, 'slug', 0, 1, ' home ', '''home''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (2, 'title', 0, 1, ' homepage ', '''homepage''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (2, 'slug', 0, 2, ' home ', '''home''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (2, 'title', 0, 2, ' homepage ', '''homepage''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (4, 'slug', 0, 2, '', '');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (5, 'slug', 0, 2, ' terms and conditions ', '''and'' ''conditions'' ''terms''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (5, 'title', 0, 2, ' terms and conditions ', '''and'' ''conditions'' ''terms''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (7, 'slug', 0, 2, ' privacy policy ', '''policy'' ''privacy''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (7, 'title', 0, 2, ' privacy policy ', '''policy'' ''privacy''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (11, 'slug', 0, 2, ' 2 ', '''2''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (11, 'title', 0, 2, ' terms and conditions ', '''and'' ''conditions'' ''terms''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (12, 'slug', 0, 2, ' 2 ', '''2''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (12, 'title', 0, 2, ' privacy policy ', '''policy'' ''privacy''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (13, 'slug', 0, 2, ' 2 ', '''2''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (13, 'title', 0, 2, ' home ', '''home''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (14, 'filename', 0, 2, ' photo 1224458949 jpg ', '''1224458949'' ''jpg'' ''photo''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (14, 'extension', 0, 2, ' jpg ', '''jpg''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (14, 'kind', 0, 2, ' image ', '''image''');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (14, 'slug', 0, 2, '', '');
INSERT INTO public.searchindex ("elementId", attribute, "fieldId", "siteId", keywords, keywords_vector) VALUES (14, 'title', 0, 2, ' photo by lukasz rawa ', '''by'' ''lukasz'' ''photo'' ''rawa''');


--
-- Data for Name: sections; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sections (id, "structureId", name, handle, type, "enableVersioning", "propagationMethod", "defaultPlacement", "previewTargets", "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (1, 2, 'Site', 'site', 'structure', true, 'all', 'end', NULL, '2022-02-27 10:31:22', '2022-02-27 10:31:22', NULL, '7295f06d-67a8-4ad1-91aa-df78d4ceb502');


--
-- Data for Name: sections_sites; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sections_sites (id, "sectionId", "siteId", "hasUrls", "uriFormat", template, "enabledByDefault", "dateCreated", "dateUpdated", uid) VALUES (1, 1, 2, true, '{parentUri}/{slug}', 'site/_index.twig', true, '2022-02-27 10:31:22', '2022-02-27 10:31:22', 'b25b7861-65ec-4b6f-9e10-5fb2696284ff');


--
-- Data for Name: sequences; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: shunnedmessages; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: sitegroups; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sitegroups (id, name, "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (2, 'JayCraft', '2022-02-27 10:06:15', '2022-02-27 10:06:15', NULL, 'a86d155b-8719-4b11-aee6-53718181198e');
INSERT INTO public.sitegroups (id, name, "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (1, 'JayCraft', '2022-02-27 10:06:15', '2022-02-27 10:32:52', '2022-02-27 10:32:52', '0029cea0-a61a-4d4c-a01a-bdf995fd1393');


--
-- Data for Name: sites; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sites (id, "groupId", "primary", enabled, name, handle, language, "hasUrls", "baseUrl", "sortOrder", "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (2, 2, true, true, 'JayCraft', 'default', 'en-GB', true, '$PRIMARY_SITE_URL', 1, '2022-02-27 10:06:15', '2022-02-27 10:06:15', NULL, '734c8496-7eca-4f66-8377-dba7854a48eb');
INSERT INTO public.sites (id, "groupId", "primary", enabled, name, handle, language, "hasUrls", "baseUrl", "sortOrder", "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (1, 1, false, true, 'JayCraft', 'default', 'en-GB', true, '$DEFAULT_SITE_URL', 1, '2022-02-27 10:06:15', '2022-02-27 10:06:15', '2022-02-27 10:32:45', 'f1e03893-0fd0-4d36-87b3-4269d461b769');


--
-- Data for Name: snitch_collisions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.snitch_collisions (id, "snitchId", "snitchType", "userId", "whenEntered", "dateCreated", "dateUpdated", uid) VALUES (8, 0, 'element', 1, '2022-02-27 12:03:49', '2022-02-27 11:04:13', '2022-02-27 12:03:49', '637e8fa7-8eb2-44d4-991e-70f9278e6d00');


--
-- Data for Name: stc_socialnetworks; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: structureelements; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.structureelements (id, "structureId", "elementId", root, lft, rgt, level, "dateCreated", "dateUpdated", uid) VALUES (2, 2, 2, 1, 2, 3, 1, '2022-02-27 10:31:53', '2022-02-27 10:31:53', 'beeec7a0-186e-4b6f-9f99-db29ace4e79e');
INSERT INTO public.structureelements (id, "structureId", "elementId", root, lft, rgt, level, "dateCreated", "dateUpdated", uid) VALUES (3, 2, 5, 1, 4, 5, 1, '2022-02-27 11:03:02', '2022-02-27 11:03:02', 'cbe524be-78bd-451e-9a5d-ccb957b3073a');
INSERT INTO public.structureelements (id, "structureId", "elementId", root, lft, rgt, level, "dateCreated", "dateUpdated", uid) VALUES (4, 2, 7, 1, 6, 7, 1, '2022-02-27 11:03:20', '2022-02-27 11:03:20', '71fe135c-23cd-447c-a020-c5ab19ddd70f');
INSERT INTO public.structureelements (id, "structureId", "elementId", root, lft, rgt, level, "dateCreated", "dateUpdated", uid) VALUES (1, 2, NULL, 1, 1, 8, 0, '2022-02-27 10:31:53', '2022-02-27 11:03:20', '0ace34f4-b41f-4708-8932-06d727019310');
INSERT INTO public.structureelements (id, "structureId", "elementId", root, lft, rgt, level, "dateCreated", "dateUpdated", uid) VALUES (6, 4, 11, 5, 2, 3, 1, '2022-02-27 11:03:47', '2022-02-27 11:03:47', 'ac611fcc-cdab-43b9-850f-cdc3c9cad764');
INSERT INTO public.structureelements (id, "structureId", "elementId", root, lft, rgt, level, "dateCreated", "dateUpdated", uid) VALUES (5, 4, NULL, 5, 1, 6, 0, '2022-02-27 11:03:47', '2022-02-27 11:03:49', '1ff7d6cc-9c04-4428-a701-3fc47b9d1a63');
INSERT INTO public.structureelements (id, "structureId", "elementId", root, lft, rgt, level, "dateCreated", "dateUpdated", uid) VALUES (7, 4, 12, 5, 4, 5, 1, '2022-02-27 11:03:49', '2022-02-27 11:03:49', '1b1f7699-33a4-49ea-9c46-122460bddeb8');
INSERT INTO public.structureelements (id, "structureId", "elementId", root, lft, rgt, level, "dateCreated", "dateUpdated", uid) VALUES (8, 3, NULL, 8, 1, 4, 0, '2022-02-27 11:04:09', '2022-02-27 11:04:09', 'eb24f435-618a-4af0-99f6-e9c9038ec1cb');
INSERT INTO public.structureelements (id, "structureId", "elementId", root, lft, rgt, level, "dateCreated", "dateUpdated", uid) VALUES (9, 3, 13, 8, 2, 3, 1, '2022-02-27 11:04:09', '2022-02-27 11:04:09', '5cd03d34-7b3d-4d57-9a76-21fe6740faf6');


--
-- Data for Name: structures; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.structures (id, "maxLevels", "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (1, 1, '2022-02-27 10:29:58', '2022-02-27 10:29:58', NULL, '078884de-f1a4-42c7-8217-a1b89514794e');
INSERT INTO public.structures (id, "maxLevels", "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (2, NULL, '2022-02-27 10:31:22', '2022-02-27 10:31:22', NULL, '33ddf800-f394-4193-8e7e-263151808a1a');
INSERT INTO public.structures (id, "maxLevels", "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (3, NULL, '2022-02-27 11:02:15', '2022-02-27 11:02:15', NULL, '8d7fcb71-2cd9-49dd-834e-ff4f38ed5aa6');
INSERT INTO public.structures (id, "maxLevels", "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (4, 1, '2022-02-27 11:02:53', '2022-02-27 11:02:53', NULL, '25203337-c91d-40a9-8aab-7e8d3bb31b5a');


--
-- Data for Name: supertableblocks; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: supertableblocktypes; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.supertableblocktypes (id, "fieldId", "fieldLayoutId", "dateCreated", "dateUpdated", uid) VALUES (1, 1, 2, '2022-02-27 10:55:56', '2022-02-27 10:55:56', '1e04ba6e-bfb4-4cd6-a004-b38120769120');


--
-- Data for Name: systemmessages; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: taggroups; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: usergroups; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: usergroups_users; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: userpermissions; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: userpermissions_usergroups; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: userpermissions_users; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: userpreferences; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.userpreferences ("userId", preferences) VALUES (1, '{"language":"en-GB"}');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users (id, username, "photoId", "firstName", "lastName", email, password, admin, locked, suspended, pending, "lastLoginDate", "lastLoginAttemptIp", "invalidLoginWindowStart", "invalidLoginCount", "lastInvalidLoginDate", "lockoutDate", "hasDashboard", "verificationCode", "verificationCodeIssuedDate", "unverifiedEmail", "passwordResetRequired", "lastPasswordChangeDate", "dateCreated", "dateUpdated", uid) VALUES (1, 'admin', NULL, NULL, NULL, 'hello@jaycollett.co', '$2y$13$1BmM8MRWLtCIbbmtl./WdeDNb1jmg2myeW/oanLrOmoqOivSUNdCa', true, false, false, false, '2022-02-27 10:11:16', NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, false, '2022-02-27 10:06:15', '2022-02-27 10:06:15', '2022-02-27 10:11:16', 'ff066fd3-7326-431f-b0ca-891f01c31c66');


--
-- Data for Name: volumefolders; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.volumefolders (id, "parentId", "volumeId", name, path, "dateCreated", "dateUpdated", uid) VALUES (1, NULL, NULL, 'Temporary source', NULL, '2022-02-27 11:01:23', '2022-02-27 11:01:23', 'cf61b77c-aeae-4730-b1e2-04ee3b21dede');
INSERT INTO public.volumefolders (id, "parentId", "volumeId", name, path, "dateCreated", "dateUpdated", uid) VALUES (2, 1, NULL, 'user_1', 'user_1/', '2022-02-27 11:01:23', '2022-02-27 11:01:23', '1dfe9bef-d13d-4bdc-b2e9-e264db7d6a9d');
INSERT INTO public.volumefolders (id, "parentId", "volumeId", name, path, "dateCreated", "dateUpdated", uid) VALUES (3, NULL, 1, 'Uploads', '', '2022-02-27 12:06:15', '2022-02-27 12:06:15', '3fd40353-ec7b-40c6-b330-a43cb43751db');
INSERT INTO public.volumefolders (id, "parentId", "volumeId", name, path, "dateCreated", "dateUpdated", uid) VALUES (4, 3, 1, 'unsplash', 'unsplash/', '2022-02-27 12:11:22', '2022-02-27 12:11:22', '102f2b0e-3898-4882-83e8-9bb8186c52f5');


--
-- Data for Name: volumes; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.volumes (id, "fieldLayoutId", name, handle, type, "hasUrls", url, "titleTranslationMethod", "titleTranslationKeyFormat", settings, "sortOrder", "dateCreated", "dateUpdated", "dateDeleted", uid) VALUES (1, 4, 'Uploads', 'uploads', 'craft\volumes\Local', true, '$ASSET_BASE_URL', 'site', NULL, '{"path":"@uploadsRoot"}', 1, '2022-02-27 12:06:15', '2022-02-27 12:06:15', NULL, '14b434ef-d992-4dea-a7d3-0d2e59a61c11');


--
-- Data for Name: widgets; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.widgets (id, "userId", type, "sortOrder", colspan, settings, enabled, "dateCreated", "dateUpdated", uid) VALUES (1, 1, 'craft\widgets\RecentEntries', 1, NULL, '{"siteId":2,"section":"*","limit":10}', true, '2022-02-27 10:07:43', '2022-02-27 10:07:43', '60cb94bb-6f9b-49bb-9401-f5e00cdd5881');
INSERT INTO public.widgets (id, "userId", type, "sortOrder", colspan, settings, enabled, "dateCreated", "dateUpdated", uid) VALUES (2, 1, 'craft\widgets\CraftSupport', 2, NULL, '[]', true, '2022-02-27 10:07:43', '2022-02-27 10:07:43', '87282759-357a-4f81-b5fb-239167eb7541');
INSERT INTO public.widgets (id, "userId", type, "sortOrder", colspan, settings, enabled, "dateCreated", "dateUpdated", uid) VALUES (3, 1, 'craft\widgets\Updates', 3, NULL, '[]', true, '2022-02-27 10:07:43', '2022-02-27 10:07:43', '729659d2-5917-4ad4-aac4-bbb619c20d6c');
INSERT INTO public.widgets (id, "userId", type, "sortOrder", colspan, settings, enabled, "dateCreated", "dateUpdated", uid) VALUES (4, 1, 'craft\widgets\Feed', 4, NULL, '{"url":"https://craftcms.com/news.rss","title":"Craft News","limit":5}', true, '2022-02-27 10:07:43', '2022-02-27 10:07:43', 'd0347b5f-243b-4c6e-a663-7c550e00aa5a');


--
-- Name: announcements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.announcements_id_seq', 1, false);


--
-- Name: assetindexdata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.assetindexdata_id_seq', 1, false);


--
-- Name: assettransformindex_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.assettransformindex_id_seq', 1, false);


--
-- Name: assettransforms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.assettransforms_id_seq', 1, false);


--
-- Name: categorygroups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categorygroups_id_seq', 1, false);


--
-- Name: categorygroups_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categorygroups_sites_id_seq', 1, false);


--
-- Name: content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.content_id_seq', 16, true);


--
-- Name: cpnav_layout_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cpnav_layout_id_seq', 1, true);


--
-- Name: cpnav_navigation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cpnav_navigation_id_seq', 13, true);


--
-- Name: cpnav_pending_navigations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cpnav_pending_navigations_id_seq', 6, true);


--
-- Name: craftidtokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.craftidtokens_id_seq', 1, false);


--
-- Name: deprecationerrors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.deprecationerrors_id_seq', 1, false);


--
-- Name: drafts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.drafts_id_seq', 3, true);


--
-- Name: elementindexsettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.elementindexsettings_id_seq', 1, false);


--
-- Name: elements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.elements_id_seq', 14, true);


--
-- Name: elements_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.elements_sites_id_seq', 16, true);


--
-- Name: entrytypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.entrytypes_id_seq', 1, true);


--
-- Name: fieldgroups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fieldgroups_id_seq', 3, true);


--
-- Name: fieldlayoutfields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fieldlayoutfields_id_seq', 5, true);


--
-- Name: fieldlayouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fieldlayouts_id_seq', 4, true);


--
-- Name: fieldlayouttabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fieldlayouttabs_id_seq', 7, true);


--
-- Name: fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fields_id_seq', 5, true);


--
-- Name: globalsets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.globalsets_id_seq', 1, false);


--
-- Name: gqlschemas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.gqlschemas_id_seq', 1, false);


--
-- Name: gqltokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.gqltokens_id_seq', 1, false);


--
-- Name: info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.info_id_seq', 1, false);


--
-- Name: matrixblocktypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.matrixblocktypes_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.migrations_id_seq', 283, true);


--
-- Name: navigation_navs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.navigation_navs_id_seq', 2, true);


--
-- Name: plugins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.plugins_id_seq', 15, true);


--
-- Name: queue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.queue_id_seq', 41, true);


--
-- Name: relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.relations_id_seq', 1, false);


--
-- Name: revisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.revisions_id_seq', 4, true);


--
-- Name: sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sections_id_seq', 1, true);


--
-- Name: sections_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sections_sites_id_seq', 2, true);


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 1, true);


--
-- Name: shunnedmessages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shunnedmessages_id_seq', 1, false);


--
-- Name: sitegroups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sitegroups_id_seq', 2, true);


--
-- Name: sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sites_id_seq', 2, true);


--
-- Name: snitch_collisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.snitch_collisions_id_seq', 8, true);


--
-- Name: stc_socialnetworks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.stc_socialnetworks_id_seq', 1, false);


--
-- Name: structureelements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.structureelements_id_seq', 9, true);


--
-- Name: structures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.structures_id_seq', 4, true);


--
-- Name: supertableblocktypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.supertableblocktypes_id_seq', 1, true);


--
-- Name: systemmessages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.systemmessages_id_seq', 1, false);


--
-- Name: taggroups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.taggroups_id_seq', 1, false);


--
-- Name: templatecacheelements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.templatecacheelements_id_seq', 1, false);


--
-- Name: templatecachequeries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.templatecachequeries_id_seq', 1, false);


--
-- Name: templatecaches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.templatecaches_id_seq', 1, false);


--
-- Name: tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tokens_id_seq', 1, false);


--
-- Name: usergroups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.usergroups_id_seq', 1, false);


--
-- Name: usergroups_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.usergroups_users_id_seq', 1, false);


--
-- Name: userpermissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.userpermissions_id_seq', 1, false);


--
-- Name: userpermissions_usergroups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.userpermissions_usergroups_id_seq', 1, false);


--
-- Name: userpermissions_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.userpermissions_users_id_seq', 1, false);


--
-- Name: userpreferences_userId_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."userpreferences_userId_seq"', 1, false);


--
-- Name: volumefolders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.volumefolders_id_seq', 4, true);


--
-- Name: volumes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.volumes_id_seq', 1, true);


--
-- Name: widgets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.widgets_id_seq', 4, true);


--
-- Name: announcements announcements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (id);


--
-- Name: assetindexdata assetindexdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assetindexdata
    ADD CONSTRAINT assetindexdata_pkey PRIMARY KEY (id);


--
-- Name: assets assets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assets
    ADD CONSTRAINT assets_pkey PRIMARY KEY (id);


--
-- Name: assettransformindex assettransformindex_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assettransformindex
    ADD CONSTRAINT assettransformindex_pkey PRIMARY KEY (id);


--
-- Name: assettransforms assettransforms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assettransforms
    ADD CONSTRAINT assettransforms_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: categorygroups categorygroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorygroups
    ADD CONSTRAINT categorygroups_pkey PRIMARY KEY (id);


--
-- Name: categorygroups_sites categorygroups_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorygroups_sites
    ADD CONSTRAINT categorygroups_sites_pkey PRIMARY KEY (id);


--
-- Name: changedattributes changedattributes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.changedattributes
    ADD CONSTRAINT changedattributes_pkey PRIMARY KEY ("elementId", "siteId", attribute);


--
-- Name: changedfields changedfields_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.changedfields
    ADD CONSTRAINT changedfields_pkey PRIMARY KEY ("elementId", "siteId", "fieldId");


--
-- Name: content content_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT content_pkey PRIMARY KEY (id);


--
-- Name: cpnav_layout cpnav_layout_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cpnav_layout
    ADD CONSTRAINT cpnav_layout_pkey PRIMARY KEY (id);


--
-- Name: cpnav_navigation cpnav_navigation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cpnav_navigation
    ADD CONSTRAINT cpnav_navigation_pkey PRIMARY KEY (id);


--
-- Name: cpnav_pending_navigations cpnav_pending_navigations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cpnav_pending_navigations
    ADD CONSTRAINT cpnav_pending_navigations_pkey PRIMARY KEY (id);


--
-- Name: craftidtokens craftidtokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.craftidtokens
    ADD CONSTRAINT craftidtokens_pkey PRIMARY KEY (id);


--
-- Name: deprecationerrors deprecationerrors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deprecationerrors
    ADD CONSTRAINT deprecationerrors_pkey PRIMARY KEY (id);


--
-- Name: drafts drafts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.drafts
    ADD CONSTRAINT drafts_pkey PRIMARY KEY (id);


--
-- Name: elementindexsettings elementindexsettings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elementindexsettings
    ADD CONSTRAINT elementindexsettings_pkey PRIMARY KEY (id);


--
-- Name: elements elements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_pkey PRIMARY KEY (id);


--
-- Name: elements_sites elements_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elements_sites
    ADD CONSTRAINT elements_sites_pkey PRIMARY KEY (id);


--
-- Name: entries entries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entries
    ADD CONSTRAINT entries_pkey PRIMARY KEY (id);


--
-- Name: entrytypes entrytypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entrytypes
    ADD CONSTRAINT entrytypes_pkey PRIMARY KEY (id);


--
-- Name: fieldgroups fieldgroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fieldgroups
    ADD CONSTRAINT fieldgroups_pkey PRIMARY KEY (id);


--
-- Name: fieldlayoutfields fieldlayoutfields_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fieldlayoutfields
    ADD CONSTRAINT fieldlayoutfields_pkey PRIMARY KEY (id);


--
-- Name: fieldlayouts fieldlayouts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fieldlayouts
    ADD CONSTRAINT fieldlayouts_pkey PRIMARY KEY (id);


--
-- Name: fieldlayouttabs fieldlayouttabs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fieldlayouttabs
    ADD CONSTRAINT fieldlayouttabs_pkey PRIMARY KEY (id);


--
-- Name: fields fields_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fields
    ADD CONSTRAINT fields_pkey PRIMARY KEY (id);


--
-- Name: globalsets globalsets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.globalsets
    ADD CONSTRAINT globalsets_pkey PRIMARY KEY (id);


--
-- Name: gqlschemas gqlschemas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gqlschemas
    ADD CONSTRAINT gqlschemas_pkey PRIMARY KEY (id);


--
-- Name: gqltokens gqltokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gqltokens
    ADD CONSTRAINT gqltokens_pkey PRIMARY KEY (id);


--
-- Name: info info_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_pkey PRIMARY KEY (id);


--
-- Name: matrixblocks matrixblocks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matrixblocks
    ADD CONSTRAINT matrixblocks_pkey PRIMARY KEY (id);


--
-- Name: matrixblocktypes matrixblocktypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matrixblocktypes
    ADD CONSTRAINT matrixblocktypes_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: navigation_navs navigation_navs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigation_navs
    ADD CONSTRAINT navigation_navs_pkey PRIMARY KEY (id);


--
-- Name: navigation_nodes navigation_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigation_nodes
    ADD CONSTRAINT navigation_nodes_pkey PRIMARY KEY (id);


--
-- Name: searchindex pk_hcvgyimzefnqevxuoadouagimiydxdmxlvaq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.searchindex
    ADD CONSTRAINT pk_hcvgyimzefnqevxuoadouagimiydxdmxlvaq PRIMARY KEY ("elementId", attribute, "fieldId", "siteId");


--
-- Name: plugins plugins_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plugins
    ADD CONSTRAINT plugins_pkey PRIMARY KEY (id);


--
-- Name: projectconfig projectconfig_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projectconfig
    ADD CONSTRAINT projectconfig_pkey PRIMARY KEY (path);


--
-- Name: queue queue_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.queue
    ADD CONSTRAINT queue_pkey PRIMARY KEY (id);


--
-- Name: relations relations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.relations
    ADD CONSTRAINT relations_pkey PRIMARY KEY (id);


--
-- Name: resourcepaths resourcepaths_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.resourcepaths
    ADD CONSTRAINT resourcepaths_pkey PRIMARY KEY (hash);


--
-- Name: revisions revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.revisions
    ADD CONSTRAINT revisions_pkey PRIMARY KEY (id);


--
-- Name: sections sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (id);


--
-- Name: sections_sites sections_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sections_sites
    ADD CONSTRAINT sections_sites_pkey PRIMARY KEY (id);


--
-- Name: sequences sequences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sequences
    ADD CONSTRAINT sequences_pkey PRIMARY KEY (name);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: shunnedmessages shunnedmessages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shunnedmessages
    ADD CONSTRAINT shunnedmessages_pkey PRIMARY KEY (id);


--
-- Name: sitegroups sitegroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sitegroups
    ADD CONSTRAINT sitegroups_pkey PRIMARY KEY (id);


--
-- Name: sites sites_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);


--
-- Name: snitch_collisions snitch_collisions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.snitch_collisions
    ADD CONSTRAINT snitch_collisions_pkey PRIMARY KEY (id);


--
-- Name: stc_socialnetworks stc_socialnetworks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stc_socialnetworks
    ADD CONSTRAINT stc_socialnetworks_pkey PRIMARY KEY (id);


--
-- Name: structureelements structureelements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.structureelements
    ADD CONSTRAINT structureelements_pkey PRIMARY KEY (id);


--
-- Name: structures structures_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.structures
    ADD CONSTRAINT structures_pkey PRIMARY KEY (id);


--
-- Name: supertableblocks supertableblocks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supertableblocks
    ADD CONSTRAINT supertableblocks_pkey PRIMARY KEY (id);


--
-- Name: supertableblocktypes supertableblocktypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supertableblocktypes
    ADD CONSTRAINT supertableblocktypes_pkey PRIMARY KEY (id);


--
-- Name: systemmessages systemmessages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.systemmessages
    ADD CONSTRAINT systemmessages_pkey PRIMARY KEY (id);


--
-- Name: taggroups taggroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggroups
    ADD CONSTRAINT taggroups_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: templatecacheelements templatecacheelements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.templatecacheelements
    ADD CONSTRAINT templatecacheelements_pkey PRIMARY KEY (id);


--
-- Name: templatecachequeries templatecachequeries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.templatecachequeries
    ADD CONSTRAINT templatecachequeries_pkey PRIMARY KEY (id);


--
-- Name: templatecaches templatecaches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.templatecaches
    ADD CONSTRAINT templatecaches_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);


--
-- Name: usergroups usergroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usergroups
    ADD CONSTRAINT usergroups_pkey PRIMARY KEY (id);


--
-- Name: usergroups_users usergroups_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usergroups_users
    ADD CONSTRAINT usergroups_users_pkey PRIMARY KEY (id);


--
-- Name: userpermissions userpermissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userpermissions
    ADD CONSTRAINT userpermissions_pkey PRIMARY KEY (id);


--
-- Name: userpermissions_usergroups userpermissions_usergroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userpermissions_usergroups
    ADD CONSTRAINT userpermissions_usergroups_pkey PRIMARY KEY (id);


--
-- Name: userpermissions_users userpermissions_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userpermissions_users
    ADD CONSTRAINT userpermissions_users_pkey PRIMARY KEY (id);


--
-- Name: userpreferences userpreferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userpreferences
    ADD CONSTRAINT userpreferences_pkey PRIMARY KEY ("userId");


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: volumefolders volumefolders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.volumefolders
    ADD CONSTRAINT volumefolders_pkey PRIMARY KEY (id);


--
-- Name: volumes volumes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.volumes
    ADD CONSTRAINT volumes_pkey PRIMARY KEY (id);


--
-- Name: widgets widgets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.widgets
    ADD CONSTRAINT widgets_pkey PRIMARY KEY (id);


--
-- Name: idx_acyryiftyoovimngebopabhrmbjhiwlpggej; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_acyryiftyoovimngebopabhrmbjhiwlpggej ON public.announcements USING btree ("userId", unread, "dateRead", "dateCreated");


--
-- Name: idx_adbyvzducluoisugmzfyzdsurytzzhcdkyul; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_adbyvzducluoisugmzfyzdsurytzzhcdkyul ON public.assets USING btree (filename, "folderId");


--
-- Name: idx_aezzhsmdvkjctolwrdaamvxivuqzilejnybt; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_aezzhsmdvkjctolwrdaamvxivuqzilejnybt ON public.userpermissions_users USING btree ("permissionId", "userId");


--
-- Name: idx_anoriromnzyxeyuhbenukzfnlgvpzqsqtkoj; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_anoriromnzyxeyuhbenukzfnlgvpzqsqtkoj ON public.navigation_nodes USING btree ("navId");


--
-- Name: idx_aoygwzlzcigwvotgswdgxtiujduamlrwhnre; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_aoygwzlzcigwvotgswdgxtiujduamlrwhnre ON public.sections USING btree (name);


--
-- Name: idx_aqxzrrudrqmvwwpoojpuqgawlilgnoekkyzt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_aqxzrrudrqmvwwpoojpuqgawlilgnoekkyzt ON public.sections USING btree ("dateDeleted");


--
-- Name: idx_benmjsbvecqgnqtpchwxujxruptpnbolhosk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_benmjsbvecqgnqtpchwxujxruptpnbolhosk ON public.users USING btree ("verificationCode");


--
-- Name: idx_bqyvcvpzkuogagdxnmckbgsrhpxgdmltosdj; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_bqyvcvpzkuogagdxnmckbgsrhpxgdmltosdj ON public.gqltokens USING btree (name);


--
-- Name: idx_cdlpawycghyrqysuajxhiphxvhtqtzjdqruk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cdlpawycghyrqysuajxhiphxvhtqtzjdqruk ON public.changedattributes USING btree ("elementId", "siteId", "dateUpdated");


--
-- Name: idx_cfuhzvptmeikiihpneaghulotmnmyacmmueo; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cfuhzvptmeikiihpneaghulotmnmyacmmueo ON public.fieldlayouts USING btree ("dateDeleted");


--
-- Name: idx_cgktiucqlkbpsgnlllzqbqofymmivsgtezwn; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cgktiucqlkbpsgnlllzqbqofymmivsgtezwn ON public.supertableblocktypes USING btree ("fieldLayoutId");


--
-- Name: idx_cgmoqqbvaqvpshxfjzqfazhkzwnrhfakajai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cgmoqqbvaqvpshxfjzqfazhkzwnrhfakajai ON public.templatecaches USING btree ("cacheKey", "siteId", "expiryDate");


--
-- Name: idx_clzyejjukyuopfttvbwgycojpjjylzlhxwdm; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_clzyejjukyuopfttvbwgycojpjjylzlhxwdm ON public.templatecacheelements USING btree ("cacheId");


--
-- Name: idx_cnpxkfzkenoufddesgtjxsvbelhcyrjdzyrc; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cnpxkfzkenoufddesgtjxsvbelhcyrjdzyrc ON public.matrixblocks USING btree ("fieldId");


--
-- Name: idx_cqexaazncridhybgktqhxmloiyjxkrqgekug; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cqexaazncridhybgktqhxmloiyjxkrqgekug ON public.content USING btree (title);


--
-- Name: idx_cvmxrfhkwzmqunjdkxirjhscetifxuugdblt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cvmxrfhkwzmqunjdkxirjhscetifxuugdblt ON public.entries USING btree ("typeId");


--
-- Name: idx_cwwuardfhbdqvognqtfniahajppsvgbvmbud; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cwwuardfhbdqvognqtfniahajppsvgbvmbud ON public.announcements USING btree ("dateRead");


--
-- Name: idx_dmxybaeyqbuhvczbpmhqkegktrzaeferwrdd; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_dmxybaeyqbuhvczbpmhqkegktrzaeferwrdd ON public.categorygroups USING btree ("structureId");


--
-- Name: idx_drwrgnknqdsyiilhwolavlujnfxuccavojkn; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_drwrgnknqdsyiilhwolavlujnfxuccavojkn ON public.sites USING btree ("dateDeleted");


--
-- Name: idx_dxxvmygxpipplbqijhwhaouubmaotixzzuix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_dxxvmygxpipplbqijhwhaouubmaotixzzuix ON public.matrixblocktypes USING btree ("fieldId");


--
-- Name: idx_dyhmcmyoxzoqlnenoedzamomjuqvynbhikfe; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_dyhmcmyoxzoqlnenoedzamomjuqvynbhikfe ON public.structureelements USING btree ("structureId", "elementId");


--
-- Name: idx_dyjqlbfbjwycqmwpgpztibjzdhfxcnhfyjgl; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_dyjqlbfbjwycqmwpgpztibjzdhfxcnhfyjgl ON public.usergroups_users USING btree ("groupId", "userId");


--
-- Name: idx_dyoibxtgdrlhgdpohlbzntjjfmrkxhkdhlmn; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_dyoibxtgdrlhgdpohlbzntjjfmrkxhkdhlmn ON public.plugins USING btree (handle);


--
-- Name: idx_eatdswftzyggpnpuopyrpksrdwpkyjujeigk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_eatdswftzyggpnpuopyrpksrdwpkyjujeigk ON public.entrytypes USING btree ("dateDeleted");


--
-- Name: idx_eftlzfruwyrzwualavseuojfmsbbvpmlkgrz; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_eftlzfruwyrzwualavseuojfmsbbvpmlkgrz ON public.userpermissions USING btree (name);


--
-- Name: idx_emmcnlpmghtlpecaeqdhpiojwrbphkfyvxpv; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_emmcnlpmghtlpecaeqdhpiojwrbphkfyvxpv ON public.content USING btree ("elementId", "siteId");


--
-- Name: idx_enkcijmptkyarpletyyzxydrakpneplrvpqr; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_enkcijmptkyarpletyyzxydrakpneplrvpqr ON public.fieldgroups USING btree ("dateDeleted", name);


--
-- Name: idx_faokvvfvvgrscsidgkkxsqfimdwbenyxwjxs; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_faokvvfvvgrscsidgkkxsqfimdwbenyxwjxs ON public.categorygroups_sites USING btree ("groupId", "siteId");


--
-- Name: idx_fbhlhmndjyfgbmtobudvjskykdbnbsepzlyk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fbhlhmndjyfgbmtobudvjskykdbnbsepzlyk ON public.supertableblocktypes USING btree ("fieldId");


--
-- Name: idx_fcdlwseoxsoqvaiglmictequpencmmwrksbt; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_fcdlwseoxsoqvaiglmictequpencmmwrksbt ON public.deprecationerrors USING btree (key, fingerprint);


--
-- Name: idx_fhxytyppidpaamtesihpqqmtdqmfvkmkialf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fhxytyppidpaamtesihpqqmtdqmfvkmkialf ON public.matrixblocks USING btree ("ownerId");


--
-- Name: idx_fhzdgauklbtkfmbsvrvtzfvshlfunnhgqbgc; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_fhzdgauklbtkfmbsvrvtzfvshlfunnhgqbgc ON public.volumefolders USING btree (name, "parentId", "volumeId");


--
-- Name: idx_fqjvrklykqnsfszthgoufjndenjiwizqorat; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fqjvrklykqnsfszthgoufjndenjiwizqorat ON public.navigation_navs USING btree ("dateDeleted");


--
-- Name: idx_fsrcyaiaimzxfwqrkecprfsgbznzpgowxvki; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_fsrcyaiaimzxfwqrkecprfsgbznzpgowxvki ON public.categorygroups USING btree (name);


--
-- Name: idx_ftbmtyommvjidpojmyyxdzvmonoudmvcqezr; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ftbmtyommvjidpojmyyxdzvmonoudmvcqezr ON public.templatecaches USING btree ("siteId");


--
-- Name: idx_gelfrniikyhxtizbvethsdpqxxannufvgzwf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_gelfrniikyhxtizbvethsdpqxxannufvgzwf ON public.fieldlayouts USING btree (type);


--
-- Name: idx_gjfzyheyvhsqppkixtquiawfjrvkpgycbwlb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_gjfzyheyvhsqppkixtquiawfjrvkpgycbwlb ON public.globalsets USING btree (handle);


--
-- Name: idx_gjzvjkiujmlodwtxlkshufottpgounljcqgs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_gjzvjkiujmlodwtxlkshufottpgounljcqgs ON public.content USING btree ("siteId");


--
-- Name: idx_glvudjjdnvvumfdaarfqdjpbmquyiurjzjeb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_glvudjjdnvvumfdaarfqdjpbmquyiurjzjeb ON public.fieldlayoutfields USING btree ("sortOrder");


--
-- Name: idx_gonvsiunmluicyxkcbgiwjzjjkqunfwvzuor; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_gonvsiunmluicyxkcbgiwjzjjkqunfwvzuor ON public.fields USING btree (context);


--
-- Name: idx_gtyihumsoxtithcfcxmchyndcbyzirtwgnvr; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_gtyihumsoxtithcfcxmchyndcbyzirtwgnvr ON public.supertableblocks USING btree ("fieldId");


--
-- Name: idx_guemzfoffrpkkqcbbigsgkrnfurapmnthris; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_guemzfoffrpkkqcbbigsgkrnfurapmnthris ON public.tokens USING btree ("expiryDate");


--
-- Name: idx_gvhrbeefrwejjbxzcvpiwfyceruhnvqhgcoy; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_gvhrbeefrwejjbxzcvpiwfyceruhnvqhgcoy ON public.categorygroups USING btree ("dateDeleted");


--
-- Name: idx_gvtdmyfqjcxdwoluofopimumryxuabxmkhnx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_gvtdmyfqjcxdwoluofopimumryxuabxmkhnx ON public.fields USING btree (handle, context);


--
-- Name: idx_gzzgmfzrjdhohyvppbvqlcbbwphfkfpfvlam; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_gzzgmfzrjdhohyvppbvqlcbbwphfkfpfvlam ON public.categorygroups USING btree (handle);


--
-- Name: idx_hdqvtimerwgfekhhvcqhksxiswotyllbmlet; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_hdqvtimerwgfekhhvcqhksxiswotyllbmlet ON public.supertableblocks USING btree ("ownerId");


--
-- Name: idx_hhftgyjnezbbsdtxfxqeaiwajwlxeuxsflut; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_hhftgyjnezbbsdtxfxqeaiwajwlxeuxsflut ON public.userpermissions_users USING btree ("userId");


--
-- Name: idx_hmbhdjjbnbbarwvnvgqutpplvdjaxtdqzilt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_hmbhdjjbnbbarwvnvgqutpplvdjaxtdqzilt ON public.sessions USING btree ("userId");


--
-- Name: idx_hmkbwszgsqybvomekxqwkqjtsszcgdcfudar; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_hmkbwszgsqybvomekxqwkqjtsszcgdcfudar ON public.globalsets USING btree ("sortOrder");


--
-- Name: idx_hryxpxavrhpdqmeliehcaxwtbozgsddujpyi; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_hryxpxavrhpdqmeliehcaxwtbozgsddujpyi ON public.relations USING btree ("sourceId");


--
-- Name: idx_hxozuphdrbsqpbrscuyypnugvfdsantcukwu; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_hxozuphdrbsqpbrscuyypnugvfdsantcukwu ON public.systemmessages USING btree (key, language);


--
-- Name: idx_hxrdaojnopgxiqvdytrlpxzpirrjnuqafhic; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_hxrdaojnopgxiqvdytrlpxzpirrjnuqafhic ON public.gqltokens USING btree ("accessToken");


--
-- Name: idx_hxzfpdrgkjgrpxjdqqbythxscqrkbqcylhxk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_hxzfpdrgkjgrpxjdqqbythxscqrkbqcylhxk ON public.globalsets USING btree ("fieldLayoutId");


--
-- Name: idx_itltbtnfwuoaigzmftigkozcrmxsddcieuex; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_itltbtnfwuoaigzmftigkozcrmxsddcieuex ON public.assettransforms USING btree (name);


--
-- Name: idx_izrqxwnudsyywkctwyiqmeaosycejafqkmjl; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_izrqxwnudsyywkctwyiqmeaosycejafqkmjl ON public.drafts USING btree ("creatorId", provisional);


--
-- Name: idx_jlzevxnqqnvsrixyaszxdywulncmxsnefblv; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_jlzevxnqqnvsrixyaszxdywulncmxsnefblv ON public.matrixblocks USING btree ("typeId");


--
-- Name: idx_jpwnehvbvodlqfwxlalrcvivddejbviofytp; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_jpwnehvbvodlqfwxlalrcvivddejbviofytp ON public.entries USING btree ("postDate");


--
-- Name: idx_jretgrrosptkuschpbiftkwmixkrzlumixrj; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_jretgrrosptkuschpbiftkwmixkrzlumixrj ON public.navigation_navs USING btree ("structureId");


--
-- Name: idx_juqwpsflhpmjlmdcrkkkchtftzhfacavnvts; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_juqwpsflhpmjlmdcrkkkchtftzhfacavnvts ON public.volumes USING btree (handle);


--
-- Name: idx_juvtefbzwdubljfijcobcvhuubqdgpcfsgwy; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_juvtefbzwdubljfijcobcvhuubqdgpcfsgwy ON public.assettransformindex USING btree ("volumeId", "assetId", location);


--
-- Name: idx_jvqmsntxrknjjtgldvqqchfmkdhfcpwulzsv; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_jvqmsntxrknjjtgldvqqchfmkdhfcpwulzsv ON public.taggroups USING btree (name);


--
-- Name: idx_jynjuehmnozjktnrrtvyfyduyeyjktgjcdxm; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_jynjuehmnozjktnrrtvyfyduyeyjktgjcdxm ON public.entrytypes USING btree ("sectionId");


--
-- Name: idx_jzssselzamapdaqdhbtzknhqwewnzmghiqrj; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_jzssselzamapdaqdhbtzknhqwewnzmghiqrj ON public.sections USING btree (handle);


--
-- Name: idx_kdjspjoyebvvwlyfiqyjnwuozqgkgsqajbis; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_kdjspjoyebvvwlyfiqyjnwuozqgkgsqajbis ON public.navigation_navs USING btree (handle);


--
-- Name: idx_kejkycujopkblqveojatbqqhbvclvpyutceq; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_kejkycujopkblqveojatbqqhbvclvpyutceq ON public.volumefolders USING btree ("volumeId");


--
-- Name: idx_kjrnwgkhxjvqvbryqvzzpinkajqpnahhqomz; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_kjrnwgkhxjvqvbryqvzzpinkajqpnahhqomz ON public.users USING btree (uid);


--
-- Name: idx_kkgpbvctboerxljalzwjbzhlihwzaumrmegl; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_kkgpbvctboerxljalzwjbzhlihwzaumrmegl ON public.taggroups USING btree (handle);


--
-- Name: idx_knimmxmnuevnxugsfobptjdqlioloxwaasuf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knimmxmnuevnxugsfobptjdqlioloxwaasuf ON public.entries USING btree ("expiryDate");


--
-- Name: idx_kptziqckscjrvqmqauajpxuhiytkdzfaibko; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_kptziqckscjrvqmqauajpxuhiytkdzfaibko ON public.fieldlayouttabs USING btree ("layoutId");


--
-- Name: idx_kqsvnghqknkreypvunrofbfiyyhaivdhppdf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_kqsvnghqknkreypvunrofbfiyyhaivdhppdf ON public.fieldlayouttabs USING btree ("sortOrder");


--
-- Name: idx_kvrejkcodkaasoyikdjdssbuybyvbexrzmtt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_kvrejkcodkaasoyikdjdssbuybyvbexrzmtt ON public.supertableblocks USING btree ("typeId");


--
-- Name: idx_lbrptsasfhhanuzynpbgprzgnqoakozfjgij; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_lbrptsasfhhanuzynpbgprzgnqoakozfjgij ON public.sessions USING btree ("dateUpdated");


--
-- Name: idx_lkkubfkmdblmilxndfujcioecdcslyeqxkaz; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_lkkubfkmdblmilxndfujcioecdcslyeqxkaz ON public.systemmessages USING btree (language);


--
-- Name: idx_lqgxbudordopbivlipzasffnnxzxweshacij; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_lqgxbudordopbivlipzasffnnxzxweshacij ON public.changedfields USING btree ("elementId", "siteId", "dateUpdated");


--
-- Name: idx_lrytzjnszeemhffbewjuhaxrveojqjhftyqx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_lrytzjnszeemhffbewjuhaxrveojqjhftyqx ON public.volumefolders USING btree ("parentId");


--
-- Name: idx_lxzmeymvagtldmjyxrwokmsbgjfxaeokddgz; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_lxzmeymvagtldmjyxrwokmsbgjfxaeokddgz ON public.relations USING btree ("fieldId", "sourceId", "sourceSiteId", "targetId");


--
-- Name: idx_mipadacbnglmmrzgherdaljgjdrucccenwxy; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_mipadacbnglmmrzgherdaljgjdrucccenwxy ON public.userpermissions_usergroups USING btree ("groupId");


--
-- Name: idx_mpclexghfwytjqvqeullsodplxuvumvfbrxe; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_mpclexghfwytjqvqeullsodplxuvumvfbrxe ON public.sections_sites USING btree ("sectionId", "siteId");


--
-- Name: idx_mpgztjigkkncndmqxymamzgdnzguktqjffta; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_mpgztjigkkncndmqxymamzgdnzguktqjffta ON public.fieldgroups USING btree (name);


--
-- Name: idx_mxfitnlzgfwhyxzzvpqntbwnrghyxmbdklfl; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_mxfitnlzgfwhyxzzvpqntbwnrghyxmbdklfl ON public.entrytypes USING btree (handle, "sectionId");


--
-- Name: idx_ncaoldkxfemdjaqhvtdoaxnxfzhwtkwlpqrt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ncaoldkxfemdjaqhvtdoaxnxfzhwtkwlpqrt ON public.categorygroups_sites USING btree ("siteId");


--
-- Name: idx_njlkvemnytddanultlufwatdjpyvzzglcmyv; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_njlkvemnytddanultlufwatdjpyvzzglcmyv ON public.assettransforms USING btree (handle);


--
-- Name: idx_nnkihcvfvvuhehlvgbkhoabgdhfrrsipavub; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_nnkihcvfvvuhehlvgbkhoabgdhfrrsipavub ON public.elements_sites USING btree (lower((uri)::text), "siteId");


--
-- Name: idx_npjvwbvfkeuwtamtwojosdstywqwoiruewjo; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_npjvwbvfkeuwtamtwojosdstywqwoiruewjo ON public.elements_sites USING btree (enabled);


--
-- Name: idx_nqdxebjftprnhctoghngpfugbgoddtdtkffa; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_nqdxebjftprnhctoghngpfugbgoddtdtkffa ON public.globalsets USING btree (name);


--
-- Name: idx_nwftgbbwfypsujbolbogdljhbhuddhpfrflq; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_nwftgbbwfypsujbolbogdljhbhuddhpfrflq ON public.drafts USING btree (saved);


--
-- Name: idx_nxjzjdpbhrwvchtcobnmslvtfrmebpuaszjy; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_nxjzjdpbhrwvchtcobnmslvtfrmebpuaszjy ON public.elements_sites USING btree ("siteId");


--
-- Name: idx_nxktaddelhxfehkjelgpqcxhwtjwgnbganmt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_nxktaddelhxfehkjelgpqcxhwtjwgnbganmt ON public.sites USING btree ("sortOrder");


--
-- Name: idx_nyqjorgbszaiwvxptwkqsxbzewhmqtqxvgxh; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_nyqjorgbszaiwvxptwkqsxbzewhmqtqxvgxh ON public.volumes USING btree (name);


--
-- Name: idx_nzyifizrmrptlzsaxsbpbjtpkxjiqjvqzsoj; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_nzyifizrmrptlzsaxsbpbjtpkxjiqjvqzsoj ON public.searchindex USING gin (keywords_vector) WITH (fastupdate=yes);


--
-- Name: idx_odievrgjymrlidkbwonceobgkvoyvkwpyliy; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_odievrgjymrlidkbwonceobgkvoyvkwpyliy ON public.sessions USING btree (token);


--
-- Name: idx_oqsbypnghxralbrjrudgwtkmwqkoxczyovsk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_oqsbypnghxralbrjrudgwtkmwqkoxczyovsk ON public.fieldlayoutfields USING btree ("tabId");


--
-- Name: idx_otinmhykunroqntlrmtuekzbezccyimsorci; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_otinmhykunroqntlrmtuekzbezccyimsorci ON public.elements_sites USING btree ("elementId", "siteId");


--
-- Name: idx_otweukusozsgscwcmljhhyqqvepzclextxhv; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_otweukusozsgscwcmljhhyqqvepzclextxhv ON public.volumes USING btree ("dateDeleted");


--
-- Name: idx_ouztswsqvsyjdsdbsmfaomgbrzbituvqfnle; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ouztswsqvsyjdsdbsmfaomgbrzbituvqfnle ON public.assets USING btree ("folderId");


--
-- Name: idx_oyizsbsztrrzkidhoemxsxzuumkostdandtz; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_oyizsbsztrrzkidhoemxsxzuumkostdandtz ON public.queue USING btree (channel, fail, "timeUpdated", "timePushed");


--
-- Name: idx_pihkrlbslnkvhndzykwqtvimkttewboaragk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_pihkrlbslnkvhndzykwqtvimkttewboaragk ON public.templatecachequeries USING btree ("cacheId");


--
-- Name: idx_plhfakjlfochqkzexthzewywbhcdpatksjdf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_plhfakjlfochqkzexthzewywbhcdpatksjdf ON public.assetindexdata USING btree ("sessionId", "volumeId");


--
-- Name: idx_ppomblrfsgrakryflzpywoipuzkuhwdxgmqv; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_ppomblrfsgrakryflzpywoipuzkuhwdxgmqv ON public.stc_socialnetworks USING btree ("elementId", "siteId");


--
-- Name: idx_puaqkdexivlxsiznmkbcqqcvplbtbiqjhumy; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_puaqkdexivlxsiznmkbcqqcvplbtbiqjhumy ON public.revisions USING btree ("sourceId", num);


--
-- Name: idx_qdrihzslnnebaxflebnpthmqjmkfihtkfqgj; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_qdrihzslnnebaxflebnpthmqjmkfihtkfqgj ON public.sites USING btree (handle);


--
-- Name: idx_qnnbkfbaewtewfexbmbejutqiptkptipfsip; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_qnnbkfbaewtewfexbmbejutqiptkptipfsip ON public.structureelements USING btree ("elementId");


--
-- Name: idx_qrgfgbgiqteuugyoveflrxdkhoganuytpwqb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_qrgfgbgiqteuugyoveflrxdkhoganuytpwqb ON public.elements USING btree ("dateDeleted");


--
-- Name: idx_qrkfyzzpqflyvqrgeyxaixznwhxvlpfzdbtf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_qrkfyzzpqflyvqrgeyxaixznwhxvlpfzdbtf ON public.supertableblocks USING btree ("sortOrder");


--
-- Name: idx_qyvtqocarzegpeqqalynypgxcsyjjljgchuk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_qyvtqocarzegpeqqalynypgxcsyjjljgchuk ON public.relations USING btree ("sourceSiteId");


--
-- Name: idx_rasgqeridabnxvlmruolpsgubflhpniqeyod; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_rasgqeridabnxvlmruolpsgubflhpniqeyod ON public.elements USING btree ("fieldLayoutId");


--
-- Name: idx_rbklezdquzbovmhgyzhwiakkzspkptqgjvsc; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_rbklezdquzbovmhgyzhwiakkzspkptqgjvsc ON public.fields USING btree ("groupId");


--
-- Name: idx_reggwjedoacnwqxukophurkwnkppglrdxypb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_reggwjedoacnwqxukophurkwnkppglrdxypb ON public.taggroups USING btree ("dateDeleted");


--
-- Name: idx_rfkryuchbigfoxsvtngoumprdutgrmkhqqao; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_rfkryuchbigfoxsvtngoumprdutgrmkhqqao ON public.structureelements USING btree (root);


--
-- Name: idx_rkeaeougnrsnytczgghaqglsctukprdtcdbq; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_rkeaeougnrsnytczgghaqglsctukprdtcdbq ON public.entrytypes USING btree ("fieldLayoutId");


--
-- Name: idx_rqqsudoeeftdagdnevlkhibdeymvhfffpqtk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_rqqsudoeeftdagdnevlkhibdeymvhfffpqtk ON public.sessions USING btree (uid);


--
-- Name: idx_seidbzdvtqmxtpkdzslmhmygbxjhugjfjowo; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_seidbzdvtqmxtpkdzslmhmygbxjhugjfjowo ON public.assettransformindex USING btree ("assetId", format, location);


--
-- Name: idx_spqweyrisqswavdpapncfmypbslgcmhvesia; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_spqweyrisqswavdpapncfmypbslgcmhvesia ON public.tokens USING btree (token);


--
-- Name: idx_sswskeugfwkanswjoyvcdcnlwtjvnwzytffu; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_sswskeugfwkanswjoyvcdcnlwtjvnwzytffu ON public.volumes USING btree ("fieldLayoutId");


--
-- Name: idx_suvvqzhjsthemiezhxbpbrcqtrhhlsaeribi; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_suvvqzhjsthemiezhxbpbrcqtrhhlsaeribi ON public.queue USING btree (channel, fail, "timeUpdated", delay);


--
-- Name: idx_sxejppvgbxubccuxicgahlxwboacwwszopoz; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_sxejppvgbxubccuxicgahlxwboacwwszopoz ON public.sections_sites USING btree ("siteId");


--
-- Name: idx_sxqgdpnvahdkjxfudexggohvfjlgibvwsvdo; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_sxqgdpnvahdkjxfudexggohvfjlgibvwsvdo ON public.users USING btree (lower((username)::text));


--
-- Name: idx_szqonhxzwlfxpeoazoeerhliuskbknrktvnz; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_szqonhxzwlfxpeoazoeerhliuskbknrktvnz ON public.users USING btree (lower((email)::text));


--
-- Name: idx_tacmescfatbeitlltjpyugnffbflrhbtbfnh; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_tacmescfatbeitlltjpyugnffbflrhbtbfnh ON public.matrixblocktypes USING btree (handle, "fieldId");


--
-- Name: idx_tjmyofoseaawpmtlmwvpxiswrgnctgvvkwpp; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_tjmyofoseaawpmtlmwvpxiswrgnctgvvkwpp ON public.usergroups USING btree (name);


--
-- Name: idx_tlsoigibwmwvtcshdtikhjvppmdhshzxynkc; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_tlsoigibwmwvtcshdtikhjvppmdhshzxynkc ON public.elements USING btree (archived, "dateCreated");


--
-- Name: idx_tydfmxdzscelhmhurypcoshtsrhvwnwkckly; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_tydfmxdzscelhmhurypcoshtsrhvwnwkckly ON public.templatecacheelements USING btree ("elementId");


--
-- Name: idx_tzveibgrboiqssavqpllfmkrhelxvltvygks; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_tzveibgrboiqssavqpllfmkrhelxvltvygks ON public.fieldlayoutfields USING btree ("layoutId", "fieldId");


--
-- Name: idx_uakvzlargevxbxgzpkgtuafwzlqywjxmzlyq; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_uakvzlargevxbxgzpkgtuafwzlqywjxmzlyq ON public.elements USING btree (archived, "dateDeleted", "draftId", "revisionId", "canonicalId");


--
-- Name: idx_unqafrssumfcflkqllamxscectkhyvhhdozh; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_unqafrssumfcflkqllamxscectkhyvhhdozh ON public.sitegroups USING btree (name);


--
-- Name: idx_uzkdkikdihaoflzdlipqllvbwqoprdzundtk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_uzkdkikdihaoflzdlipqllvbwqoprdzundtk ON public.structures USING btree ("dateDeleted");


--
-- Name: idx_vaopzzpghhgwpqixoxuizeocfmyglvrmqqws; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_vaopzzpghhgwpqixoxuizeocfmyglvrmqqws ON public.searchindex USING btree (keywords);


--
-- Name: idx_vcovekhipggroknnsishcndaxwmfqziotcnr; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_vcovekhipggroknnsishcndaxwmfqziotcnr ON public.templatecachequeries USING btree (type);


--
-- Name: idx_vfmbkghncejtaabeoiwbtaeizndtvasqnbhb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_vfmbkghncejtaabeoiwbtaeizndtvasqnbhb ON public.categories USING btree ("groupId");


--
-- Name: idx_vhusoppvrozzjnbviltsthfrovcjptsptozj; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_vhusoppvrozzjnbviltsthfrovcjptsptozj ON public.matrixblocks USING btree ("sortOrder");


--
-- Name: idx_vkrajzikfwzpyvgyosnotjckaavpuxhbneen; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_vkrajzikfwzpyvgyosnotjckaavpuxhbneen ON public.assets USING btree ("volumeId");


--
-- Name: idx_vrgyhabsptgygzmvzzozicbqwgcokspokzns; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_vrgyhabsptgygzmvzzozicbqwgcokspokzns ON public.usergroups_users USING btree ("userId");


--
-- Name: idx_vssreoqbkdxgxnscmpgqastbwagcxiogbtxm; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_vssreoqbkdxgxnscmpgqastbwagcxiogbtxm ON public.migrations USING btree (track, name);


--
-- Name: idx_vwfcsssuhmllwrrcxucqojqrmrdkfaurqnwc; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_vwfcsssuhmllwrrcxucqojqrmrdkfaurqnwc ON public.tags USING btree ("groupId");


--
-- Name: idx_wnlxwldjzoentrneeuzcfdagjkzhlhtvnhln; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_wnlxwldjzoentrneeuzcfdagjkzhlhtvnhln ON public.entrytypes USING btree (name, "sectionId");


--
-- Name: idx_wnqxymosfivdkogddloslhaltgegsvulzqde; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_wnqxymosfivdkogddloslhaltgegsvulzqde ON public.elements USING btree (archived, "dateDeleted", "draftId", "revisionId", "canonicalId", enabled);


--
-- Name: idx_wpeysfqkaedxmoxxvdtcsmulplqzcbdrcsvh; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_wpeysfqkaedxmoxxvdtcsmulplqzcbdrcsvh ON public.navigation_navs USING btree ("fieldLayoutId");


--
-- Name: idx_wywnimykhmssjitizvcpzjllfawkfxzvtzpp; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_wywnimykhmssjitizvcpzjllfawkfxzvtzpp ON public.sections USING btree ("structureId");


--
-- Name: idx_wzkpmtfrygotsexzmjmrlxcywdgsxhlukmqf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_wzkpmtfrygotsexzmjmrlxcywdgsxhlukmqf ON public.entries USING btree ("sectionId");


--
-- Name: idx_wzsisxvwhumntsjfmdolkuhgyogjhdjhuwni; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_wzsisxvwhumntsjfmdolkuhgyogjhdjhuwni ON public.elements_sites USING btree (slug, "siteId");


--
-- Name: idx_xgjxuwhwrwrvwutkjliodpqmofogotlkapxk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_xgjxuwhwrwrvwutkjliodpqmofogotlkapxk ON public.templatecaches USING btree ("cacheKey", "siteId", "expiryDate", path);


--
-- Name: idx_xlbhkgiiaprzwpzfpdcwcqrzsqdtjxdlykos; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_xlbhkgiiaprzwpzfpdcwcqrzsqdtjxdlykos ON public.structureelements USING btree (lft);


--
-- Name: idx_xpfngxhwjdpppwoacidqskwfrwtykrrzcxhz; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_xpfngxhwjdpppwoacidqskwfrwtykrrzcxhz ON public.userpermissions_usergroups USING btree ("permissionId", "groupId");


--
-- Name: idx_xxjdejndzbgqzudygweytwbzumcvcedjpdix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_xxjdejndzbgqzudygweytwbzumcvcedjpdix ON public.elements USING btree (enabled);


--
-- Name: idx_xzwltnvbxzzkrlcjwstfpqgutcvnroletumj; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_xzwltnvbxzzkrlcjwstfpqgutcvnroletumj ON public.matrixblocktypes USING btree (name, "fieldId");


--
-- Name: idx_ydiodaxngzzehkhfojdryvyvdbmjjhmvmxps; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ydiodaxngzzehkhfojdryvyvdbmjjhmvmxps ON public.entries USING btree ("authorId");


--
-- Name: idx_yelvurqbulylrijijnpnfudjzwbvqzysaubj; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_yelvurqbulylrijijnpnfudjzwbvqzysaubj ON public.usergroups USING btree (handle);


--
-- Name: idx_ygazmyzixpxftsyjqqgkpjpnwssnvpztpzpf; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_ygazmyzixpxftsyjqqgkpjpnwssnvpztpzpf ON public.shunnedmessages USING btree ("userId", message);


--
-- Name: idx_yhybqbmljvajzzgubgkvfbuuezsaelfkkeiw; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_yhybqbmljvajzzgubgkvfbuuezsaelfkkeiw ON public.elementindexsettings USING btree (type);


--
-- Name: idx_yicyrkavcydfhqqremzwsgkjcdtvwjdqeorg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_yicyrkavcydfhqqremzwsgkjcdtvwjdqeorg ON public.widgets USING btree ("userId");


--
-- Name: idx_yokxxkhdbhscybkqivgjsqugdvmeulcnamux; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_yokxxkhdbhscybkqivgjsqugdvmeulcnamux ON public.categorygroups USING btree ("fieldLayoutId");


--
-- Name: idx_yqbgzwcqgiozuhdazijucfopczdqnyzkqdak; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_yqbgzwcqgiozuhdazijucfopczdqnyzkqdak ON public.fieldlayoutfields USING btree ("fieldId");


--
-- Name: idx_ywqytpaxipzstzjptpdwtbcmhhtljfufeoij; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ywqytpaxipzstzjptpdwtbcmhhtljfufeoij ON public.structureelements USING btree (rgt);


--
-- Name: idx_zbxianbergousjlwycatlzrobbdbvgqfgwbc; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_zbxianbergousjlwycatlzrobbdbvgqfgwbc ON public.matrixblocktypes USING btree ("fieldLayoutId");


--
-- Name: idx_zcprpffyzkwdzmjgshphyhfmepfcczuuaqde; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_zcprpffyzkwdzmjgshphyhfmepfcczuuaqde ON public.assetindexdata USING btree ("volumeId");


--
-- Name: idx_zcwdtjtilatvndjfhdrowebxvabplbpgifvt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_zcwdtjtilatvndjfhdrowebxvabplbpgifvt ON public.structureelements USING btree (level);


--
-- Name: idx_zqkbrieyewydhoanyimdiyieyfvaxqqgxicb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_zqkbrieyewydhoanyimdiyieyfvaxqqgxicb ON public.relations USING btree ("targetId");


--
-- Name: idx_zvariuyexdxxwnzpgsylcbovstniaqfevngd; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_zvariuyexdxxwnzpgsylcbovstniaqfevngd ON public.elements USING btree (type);


--
-- Name: navigation_navs fk_alfvvidoethuculicmclzowbcxkoqcisvlgg; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigation_navs
    ADD CONSTRAINT fk_alfvvidoethuculicmclzowbcxkoqcisvlgg FOREIGN KEY ("structureId") REFERENCES public.structures(id) ON DELETE CASCADE;


--
-- Name: relations fk_amuttbwonuvkjxnqokrsokksulfhbfjbpnae; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.relations
    ADD CONSTRAINT fk_amuttbwonuvkjxnqokrsokksulfhbfjbpnae FOREIGN KEY ("fieldId") REFERENCES public.fields(id) ON DELETE CASCADE;


--
-- Name: elements_sites fk_bfjkehosejhpsyzwzuugzzelvhshwanhwztz; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elements_sites
    ADD CONSTRAINT fk_bfjkehosejhpsyzwzuugzzelvhshwanhwztz FOREIGN KEY ("elementId") REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: drafts fk_bfrtosicsxuwplxnsfpzztcfuuwfxhazzdur; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.drafts
    ADD CONSTRAINT fk_bfrtosicsxuwplxnsfpzztcfuuwfxhazzdur FOREIGN KEY ("sourceId") REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: changedfields fk_bfvikeojenlzysuapwfldovewetqdkplkwgv; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.changedfields
    ADD CONSTRAINT fk_bfvikeojenlzysuapwfldovewetqdkplkwgv FOREIGN KEY ("siteId") REFERENCES public.sites(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: content fk_cbgkzvoknzavhbfqvyvbeahljuvwdzhrzcnl; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT fk_cbgkzvoknzavhbfqvyvbeahljuvwdzhrzcnl FOREIGN KEY ("elementId") REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: changedattributes fk_cevksoibizlqchkzkhbfovrvcsmkwrsmvqlp; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.changedattributes
    ADD CONSTRAINT fk_cevksoibizlqchkzkhbfovrvcsmkwrsmvqlp FOREIGN KEY ("elementId") REFERENCES public.elements(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: supertableblocks fk_cfcncvldkkzzrdyxlwdogkirhqmldaypzrfi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supertableblocks
    ADD CONSTRAINT fk_cfcncvldkkzzrdyxlwdogkirhqmldaypzrfi FOREIGN KEY ("ownerId") REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: shunnedmessages fk_chfwbayesjvqiewrrkkvauzuitxkjmmqsuzg; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shunnedmessages
    ADD CONSTRAINT fk_chfwbayesjvqiewrrkkvauzuitxkjmmqsuzg FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: supertableblocktypes fk_cixerwmdvcndmsuvhavvyimjwvivplnxvkqt; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supertableblocktypes
    ADD CONSTRAINT fk_cixerwmdvcndmsuvhavvyimjwvivplnxvkqt FOREIGN KEY ("fieldLayoutId") REFERENCES public.fieldlayouts(id) ON DELETE SET NULL;


--
-- Name: users fk_crsozdnkvvjhazgxuukwmpkkxegigohiojmn; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_crsozdnkvvjhazgxuukwmpkkxegigohiojmn FOREIGN KEY ("photoId") REFERENCES public.assets(id) ON DELETE SET NULL;


--
-- Name: relations fk_cvzrzlrwzmcspdhifinlgkejcbkqhrbymkzb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.relations
    ADD CONSTRAINT fk_cvzrzlrwzmcspdhifinlgkejcbkqhrbymkzb FOREIGN KEY ("sourceSiteId") REFERENCES public.sites(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: announcements fk_dxfzsyixyxwijhfeshdsifdkdzphacvrdaaq; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT fk_dxfzsyixyxwijhfeshdsifdkdzphacvrdaaq FOREIGN KEY ("pluginId") REFERENCES public.plugins(id) ON DELETE CASCADE;


--
-- Name: supertableblocks fk_eilqmtfpbrubqvbuooccyidesmobgdleibru; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supertableblocks
    ADD CONSTRAINT fk_eilqmtfpbrubqvbuooccyidesmobgdleibru FOREIGN KEY ("fieldId") REFERENCES public.fields(id) ON DELETE CASCADE;


--
-- Name: stc_socialnetworks fk_ezdcxmlockzhduuwveusgrqlgsohknkymjcd; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stc_socialnetworks
    ADD CONSTRAINT fk_ezdcxmlockzhduuwveusgrqlgsohknkymjcd FOREIGN KEY ("siteId") REFERENCES public.sites(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: content fk_fcgsjbssjlktflfzpekmkczmjntekfeesesm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content
    ADD CONSTRAINT fk_fcgsjbssjlktflfzpekmkczmjntekfeesesm FOREIGN KEY ("siteId") REFERENCES public.sites(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: usergroups_users fk_fcjgxyevvuzgntnizkhyyxgzjzgjlklgflue; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usergroups_users
    ADD CONSTRAINT fk_fcjgxyevvuzgntnizkhyyxgzjzgjlklgflue FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: changedfields fk_fdapggyqgwllwiyvqlalvbiyjikheuvvxakd; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.changedfields
    ADD CONSTRAINT fk_fdapggyqgwllwiyvqlalvbiyjikheuvvxakd FOREIGN KEY ("elementId") REFERENCES public.elements(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: assets fk_fmraznhdkosklhgafiyzoqtqgikcxujkckvu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assets
    ADD CONSTRAINT fk_fmraznhdkosklhgafiyzoqtqgikcxujkckvu FOREIGN KEY ("volumeId") REFERENCES public.volumes(id) ON DELETE CASCADE;


--
-- Name: assets fk_fzbvgthxqjskuhozqruoimctqrvjivzzpxhs; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assets
    ADD CONSTRAINT fk_fzbvgthxqjskuhozqruoimctqrvjivzzpxhs FOREIGN KEY ("folderId") REFERENCES public.volumefolders(id) ON DELETE CASCADE;


--
-- Name: stc_socialnetworks fk_ghzzsohragjjgvfpqrnleqgcohfnfdpdfxxi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stc_socialnetworks
    ADD CONSTRAINT fk_ghzzsohragjjgvfpqrnleqgcohfnfdpdfxxi FOREIGN KEY ("elementId") REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: announcements fk_gjeisdpotgslfmfhsxypdlaoseguwhtdkfuc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT fk_gjeisdpotgslfmfhsxypdlaoseguwhtdkfuc FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: usergroups_users fk_gycyzotdfamdxhqlenaehvqgzmomxrzobocj; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usergroups_users
    ADD CONSTRAINT fk_gycyzotdfamdxhqlenaehvqgzmomxrzobocj FOREIGN KEY ("groupId") REFERENCES public.usergroups(id) ON DELETE CASCADE;


--
-- Name: categories fk_hahnufxellgovbyppybodktsjwnspogeleep; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT fk_hahnufxellgovbyppybodktsjwnspogeleep FOREIGN KEY (id) REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: categories fk_hcmpsrfoifexiaoodaxakombuubcsytugxvc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT fk_hcmpsrfoifexiaoodaxakombuubcsytugxvc FOREIGN KEY ("groupId") REFERENCES public.categorygroups(id) ON DELETE CASCADE;


--
-- Name: entries fk_hognunaerghsuwlkumfhmrfzzjcajunhovqi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entries
    ADD CONSTRAINT fk_hognunaerghsuwlkumfhmrfzzjcajunhovqi FOREIGN KEY (id) REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: navigation_nodes fk_hogyuiunbtnbwwwnmtjxvdgikshimzqbbfnt; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigation_nodes
    ADD CONSTRAINT fk_hogyuiunbtnbwwwnmtjxvdgikshimzqbbfnt FOREIGN KEY ("elementId") REFERENCES public.elements(id) ON DELETE SET NULL;


--
-- Name: elements fk_htnzkmnlcqsuugerefpsmodozzkskvskvskr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT fk_htnzkmnlcqsuugerefpsmodozzkskvskvskr FOREIGN KEY ("fieldLayoutId") REFERENCES public.fieldlayouts(id) ON DELETE SET NULL;


--
-- Name: userpermissions_usergroups fk_hxpjoazxxshcjofsoeqabwbkpykszwohbstr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userpermissions_usergroups
    ADD CONSTRAINT fk_hxpjoazxxshcjofsoeqabwbkpykszwohbstr FOREIGN KEY ("groupId") REFERENCES public.usergroups(id) ON DELETE CASCADE;


--
-- Name: navigation_nodes fk_iciswhdeoapvficpjcmkourlwulmlnxhgppv; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigation_nodes
    ADD CONSTRAINT fk_iciswhdeoapvficpjcmkourlwulmlnxhgppv FOREIGN KEY ("navId") REFERENCES public.navigation_navs(id) ON DELETE CASCADE;


--
-- Name: matrixblocks fk_ihgcoyinwgriavgwgsqjopnlsgvuwpgmupew; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matrixblocks
    ADD CONSTRAINT fk_ihgcoyinwgriavgwgsqjopnlsgvuwpgmupew FOREIGN KEY ("typeId") REFERENCES public.matrixblocktypes(id) ON DELETE CASCADE;


--
-- Name: categorygroups_sites fk_ikhfvelzaqbyxfeixroqikwlgqcgsyrtzjck; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorygroups_sites
    ADD CONSTRAINT fk_ikhfvelzaqbyxfeixroqikwlgqcgsyrtzjck FOREIGN KEY ("groupId") REFERENCES public.categorygroups(id) ON DELETE CASCADE;


--
-- Name: elements fk_iomwyfnfkugrfvdnwzwapxoxcgnocxarqbgs; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT fk_iomwyfnfkugrfvdnwzwapxoxcgnocxarqbgs FOREIGN KEY ("canonicalId") REFERENCES public.elements(id) ON DELETE SET NULL;


--
-- Name: tags fk_iouleermutltbfgnsnycakbsgpswfvbcjrxq; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT fk_iouleermutltbfgnsnycakbsgpswfvbcjrxq FOREIGN KEY ("groupId") REFERENCES public.taggroups(id) ON DELETE CASCADE;


--
-- Name: entries fk_iqaudydqvgtxhqhrkshjbkhmjutpzfsylyrp; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entries
    ADD CONSTRAINT fk_iqaudydqvgtxhqhrkshjbkhmjutpzfsylyrp FOREIGN KEY ("sectionId") REFERENCES public.sections(id) ON DELETE CASCADE;


--
-- Name: fieldlayoutfields fk_jiqtizdykcdjnsnfkfpijihlofurcfhblenl; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fieldlayoutfields
    ADD CONSTRAINT fk_jiqtizdykcdjnsnfkfpijihlofurcfhblenl FOREIGN KEY ("layoutId") REFERENCES public.fieldlayouts(id) ON DELETE CASCADE;


--
-- Name: changedfields fk_kejvwszhzjcszgovmwokkldpolssyxiiglok; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.changedfields
    ADD CONSTRAINT fk_kejvwszhzjcszgovmwokkldpolssyxiiglok FOREIGN KEY ("fieldId") REFERENCES public.fields(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: categorygroups fk_kgniqldsyrvmqhfyyezvvyanjihqimwogjpn; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorygroups
    ADD CONSTRAINT fk_kgniqldsyrvmqhfyyezvvyanjihqimwogjpn FOREIGN KEY ("fieldLayoutId") REFERENCES public.fieldlayouts(id) ON DELETE SET NULL;


--
-- Name: sections fk_kukjhpflfufpmnkfajwenhtgtqmjhsgnmdgt; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT fk_kukjhpflfufpmnkfajwenhtgtqmjhsgnmdgt FOREIGN KEY ("structureId") REFERENCES public.structures(id) ON DELETE SET NULL;


--
-- Name: relations fk_kxhsjdqwgzvqbjanjdizlcdpemqibndabnbh; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.relations
    ADD CONSTRAINT fk_kxhsjdqwgzvqbjanjdizlcdpemqibndabnbh FOREIGN KEY ("targetId") REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: volumefolders fk_kzlzfbchlbssxpupniiuisxaprnsgaxusdsf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.volumefolders
    ADD CONSTRAINT fk_kzlzfbchlbssxpupniiuisxaprnsgaxusdsf FOREIGN KEY ("parentId") REFERENCES public.volumefolders(id) ON DELETE CASCADE;


--
-- Name: assets fk_kzwfhuqpvkwwihnxewjmjeqsmdlhgpnxjqhv; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assets
    ADD CONSTRAINT fk_kzwfhuqpvkwwihnxewjmjeqsmdlhgpnxjqhv FOREIGN KEY ("uploaderId") REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: revisions fk_ljfmjvjcriveesesffjolqiegzpbzkpzvnnb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.revisions
    ADD CONSTRAINT fk_ljfmjvjcriveesesffjolqiegzpbzkpzvnnb FOREIGN KEY ("sourceId") REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: globalsets fk_lmaesxdahuxenwozquivzvonpcpnyeqrmbrs; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.globalsets
    ADD CONSTRAINT fk_lmaesxdahuxenwozquivzvonpcpnyeqrmbrs FOREIGN KEY ("fieldLayoutId") REFERENCES public.fieldlayouts(id) ON DELETE SET NULL;


--
-- Name: supertableblocks fk_lowpmibwasydgfoyxilkkdbrqfzmqajpttit; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supertableblocks
    ADD CONSTRAINT fk_lowpmibwasydgfoyxilkkdbrqfzmqajpttit FOREIGN KEY ("typeId") REFERENCES public.supertableblocktypes(id) ON DELETE CASCADE;


--
-- Name: snitch_collisions fk_mdqbwwcumojurgcqsvcthvmpsdeviougdlpf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.snitch_collisions
    ADD CONSTRAINT fk_mdqbwwcumojurgcqsvcthvmpsdeviougdlpf FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: userpermissions_users fk_mdvfacskpfqayuxwpjhmagcmtkiqritcljfb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userpermissions_users
    ADD CONSTRAINT fk_mdvfacskpfqayuxwpjhmagcmtkiqritcljfb FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: assets fk_mjsrzulfghhvvvvsdhusqzddsuptlcqabzzj; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assets
    ADD CONSTRAINT fk_mjsrzulfghhvvvvsdhusqzddsuptlcqabzzj FOREIGN KEY (id) REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: entrytypes fk_msjjbkdwtxttpofwbqlckkqxzkvsfhbanccm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entrytypes
    ADD CONSTRAINT fk_msjjbkdwtxttpofwbqlckkqxzkvsfhbanccm FOREIGN KEY ("fieldLayoutId") REFERENCES public.fieldlayouts(id) ON DELETE SET NULL;


--
-- Name: matrixblocktypes fk_mytkisrnijgadyadyxjjtaevgywpkevguniu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matrixblocktypes
    ADD CONSTRAINT fk_mytkisrnijgadyadyxjjtaevgywpkevguniu FOREIGN KEY ("fieldLayoutId") REFERENCES public.fieldlayouts(id) ON DELETE SET NULL;


--
-- Name: assetindexdata fk_mzwkptzubpfnlpxcgdgtvpuwnjlbdxdyqlke; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assetindexdata
    ADD CONSTRAINT fk_mzwkptzubpfnlpxcgdgtvpuwnjlbdxdyqlke FOREIGN KEY ("volumeId") REFERENCES public.volumes(id) ON DELETE CASCADE;


--
-- Name: entrytypes fk_nnfbbscblyoqbsvjyrthxbcoaqobiwlttvbc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entrytypes
    ADD CONSTRAINT fk_nnfbbscblyoqbsvjyrthxbcoaqobiwlttvbc FOREIGN KEY ("sectionId") REFERENCES public.sections(id) ON DELETE CASCADE;


--
-- Name: matrixblocktypes fk_nngbqjabpwvseygznhnmksheuxjlwxtfhtuf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matrixblocktypes
    ADD CONSTRAINT fk_nngbqjabpwvseygznhnmksheuxjlwxtfhtuf FOREIGN KEY ("fieldId") REFERENCES public.fields(id) ON DELETE CASCADE;


--
-- Name: navigation_navs fk_nzjjbokyqccygcnetpsxktefxwosnpixkmpy; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigation_navs
    ADD CONSTRAINT fk_nzjjbokyqccygcnetpsxktefxwosnpixkmpy FOREIGN KEY ("fieldLayoutId") REFERENCES public.fieldlayouts(id) ON DELETE SET NULL;


--
-- Name: entries fk_oqlslufhpolydqzlnzuioxwdbsuaumspogkc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entries
    ADD CONSTRAINT fk_oqlslufhpolydqzlnzuioxwdbsuaumspogkc FOREIGN KEY ("parentId") REFERENCES public.entries(id) ON DELETE SET NULL;


--
-- Name: gqltokens fk_oqvbzpgjunygjopmfgbkkedecgavwokrbozx; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gqltokens
    ADD CONSTRAINT fk_oqvbzpgjunygjopmfgbkkedecgavwokrbozx FOREIGN KEY ("schemaId") REFERENCES public.gqlschemas(id) ON DELETE SET NULL;


--
-- Name: elements_sites fk_owfxdsxaiohkmucowgbsddpbvmdnhiubpwyl; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elements_sites
    ADD CONSTRAINT fk_owfxdsxaiohkmucowgbsddpbvmdnhiubpwyl FOREIGN KEY ("siteId") REFERENCES public.sites(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: categorygroups fk_oznlxxbltlpxehjklhnaaivexvsgeaivzogj; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorygroups
    ADD CONSTRAINT fk_oznlxxbltlpxehjklhnaaivexvsgeaivzogj FOREIGN KEY ("structureId") REFERENCES public.structures(id) ON DELETE CASCADE;


--
-- Name: widgets fk_ozzkhybvwqvihnrzpabbkfxfsfktlilxtuyq; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.widgets
    ADD CONSTRAINT fk_ozzkhybvwqvihnrzpabbkfxfsfktlilxtuyq FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: changedfields fk_pddqdekaclxrjcskxetwrnxxagonoamztfwx; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.changedfields
    ADD CONSTRAINT fk_pddqdekaclxrjcskxetwrnxxagonoamztfwx FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: entries fk_pelzunpbmfsoiktcfwiqjazqtvjcmuebkitp; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entries
    ADD CONSTRAINT fk_pelzunpbmfsoiktcfwiqjazqtvjcmuebkitp FOREIGN KEY ("typeId") REFERENCES public.entrytypes(id) ON DELETE CASCADE;


--
-- Name: sites fk_pkezyqewqxwkcwrccguuqbybfxxisfomjouy; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sites
    ADD CONSTRAINT fk_pkezyqewqxwkcwrccguuqbybfxxisfomjouy FOREIGN KEY ("groupId") REFERENCES public.sitegroups(id) ON DELETE CASCADE;


--
-- Name: templatecacheelements fk_pkugeoogwanclofrexluhweafcliddlqkgzj; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.templatecacheelements
    ADD CONSTRAINT fk_pkugeoogwanclofrexluhweafcliddlqkgzj FOREIGN KEY ("elementId") REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: fieldlayouttabs fk_psbqjtzcnchcddnqwqxsillkyokzqppkzzjq; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fieldlayouttabs
    ADD CONSTRAINT fk_psbqjtzcnchcddnqwqxsillkyokzqppkzzjq FOREIGN KEY ("layoutId") REFERENCES public.fieldlayouts(id) ON DELETE CASCADE;


--
-- Name: volumes fk_pyqvaozkhihcwkhjwezwhrhkbcnioyphlwkx; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.volumes
    ADD CONSTRAINT fk_pyqvaozkhihcwkhjwezwhrhkbcnioyphlwkx FOREIGN KEY ("fieldLayoutId") REFERENCES public.fieldlayouts(id) ON DELETE SET NULL;


--
-- Name: categorygroups_sites fk_pyxxfveotkhnsofepzkaiynaxfplxkrmfpma; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categorygroups_sites
    ADD CONSTRAINT fk_pyxxfveotkhnsofepzkaiynaxfplxkrmfpma FOREIGN KEY ("siteId") REFERENCES public.sites(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: categories fk_qgabuehcswvfjvppelwarizqrqibmvxcvfwf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT fk_qgabuehcswvfjvppelwarizqrqibmvxcvfwf FOREIGN KEY ("parentId") REFERENCES public.categories(id) ON DELETE SET NULL;


--
-- Name: structureelements fk_qtrzwnyfgtuczyqqorijrxwarjtpbslowwhb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.structureelements
    ADD CONSTRAINT fk_qtrzwnyfgtuczyqqorijrxwarjtpbslowwhb FOREIGN KEY ("structureId") REFERENCES public.structures(id) ON DELETE CASCADE;


--
-- Name: matrixblocks fk_quhvndpuysucqqqdipaoajvftkibiutncsrw; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matrixblocks
    ADD CONSTRAINT fk_quhvndpuysucqqqdipaoajvftkibiutncsrw FOREIGN KEY (id) REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: entries fk_sbuvavwsdxvswspuskqctkhlsmiloctgzfyy; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.entries
    ADD CONSTRAINT fk_sbuvavwsdxvswspuskqctkhlsmiloctgzfyy FOREIGN KEY ("authorId") REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: sections_sites fk_sqkbiywgmfmotybjwarzhxzcrdvbtfhylwgm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sections_sites
    ADD CONSTRAINT fk_sqkbiywgmfmotybjwarzhxzcrdvbtfhylwgm FOREIGN KEY ("sectionId") REFERENCES public.sections(id) ON DELETE CASCADE;


--
-- Name: volumefolders fk_sqobhanbfwjoqxoackitpaumguswvqcfhtlr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.volumefolders
    ADD CONSTRAINT fk_sqobhanbfwjoqxoackitpaumguswvqcfhtlr FOREIGN KEY ("volumeId") REFERENCES public.volumes(id) ON DELETE CASCADE;


--
-- Name: changedattributes fk_sqtaleizlaonlfjbxtdegbszkhdmcytzjsob; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.changedattributes
    ADD CONSTRAINT fk_sqtaleizlaonlfjbxtdegbszkhdmcytzjsob FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: templatecacheelements fk_tjiabefucxmvmgzsecompzvyzrtbrqjffctl; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.templatecacheelements
    ADD CONSTRAINT fk_tjiabefucxmvmgzsecompzvyzrtbrqjffctl FOREIGN KEY ("cacheId") REFERENCES public.templatecaches(id) ON DELETE CASCADE;


--
-- Name: changedattributes fk_trbfhevrbsxiukfjqpzlrctxjekekqaursvb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.changedattributes
    ADD CONSTRAINT fk_trbfhevrbsxiukfjqpzlrctxjekekqaursvb FOREIGN KEY ("siteId") REFERENCES public.sites(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: drafts fk_trewfwhlqtuutkcikxlxrudkptobasrlllru; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.drafts
    ADD CONSTRAINT fk_trewfwhlqtuutkcikxlxrudkptobasrlllru FOREIGN KEY ("creatorId") REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: cpnav_navigation fk_tstdwrivhhbccorlmbxkfyaksvrjsaoboogy; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cpnav_navigation
    ADD CONSTRAINT fk_tstdwrivhhbccorlmbxkfyaksvrjsaoboogy FOREIGN KEY ("layoutId") REFERENCES public.cpnav_layout(id) ON DELETE CASCADE;


--
-- Name: structureelements fk_ueucdgevkyxpyenwglmkahkncblzkygkgown; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.structureelements
    ADD CONSTRAINT fk_ueucdgevkyxpyenwglmkahkncblzkygkgown FOREIGN KEY ("elementId") REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: users fk_uihwaijqwylfilgwzyffcmomviqmxpjzeika; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_uihwaijqwylfilgwzyffcmomviqmxpjzeika FOREIGN KEY (id) REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: revisions fk_upvrdqpxzmjlcfcjtwtettjfoozcykoguanl; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.revisions
    ADD CONSTRAINT fk_upvrdqpxzmjlcfcjtwtettjfoozcykoguanl FOREIGN KEY ("creatorId") REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: sessions fk_vafdyhtwxodtzafqxtcjwigchortouikqsut; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT fk_vafdyhtwxodtzafqxtcjwigchortouikqsut FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: userpermissions_users fk_vejxrfojlogacouikwfrzznoleunemanxcfa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userpermissions_users
    ADD CONSTRAINT fk_vejxrfojlogacouikwfrzznoleunemanxcfa FOREIGN KEY ("permissionId") REFERENCES public.userpermissions(id) ON DELETE CASCADE;


--
-- Name: templatecaches fk_vxiszzcmwwkcnvyhhndrykbdqdcjgwrzttcm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.templatecaches
    ADD CONSTRAINT fk_vxiszzcmwwkcnvyhhndrykbdqdcjgwrzttcm FOREIGN KEY ("siteId") REFERENCES public.sites(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: elements fk_wghwurjvwugkigvkojdytojcvkvrffibwtqv; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT fk_wghwurjvwugkigvkojdytojcvkvrffibwtqv FOREIGN KEY ("revisionId") REFERENCES public.revisions(id) ON DELETE CASCADE;


--
-- Name: fields fk_wgnibtqfwktovyeqihkwtlnfmrmfhcgoxrbq; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fields
    ADD CONSTRAINT fk_wgnibtqfwktovyeqihkwtlnfmrmfhcgoxrbq FOREIGN KEY ("groupId") REFERENCES public.fieldgroups(id) ON DELETE CASCADE;


--
-- Name: userpermissions_usergroups fk_wlwwgarmgzgkuvhbpztnucmggaflbkdsabhl; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userpermissions_usergroups
    ADD CONSTRAINT fk_wlwwgarmgzgkuvhbpztnucmggaflbkdsabhl FOREIGN KEY ("permissionId") REFERENCES public.userpermissions(id) ON DELETE CASCADE;


--
-- Name: fieldlayoutfields fk_wwjvmlykfvqbqwxooviouqjadperszdxhhla; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fieldlayoutfields
    ADD CONSTRAINT fk_wwjvmlykfvqbqwxooviouqjadperszdxhhla FOREIGN KEY ("fieldId") REFERENCES public.fields(id) ON DELETE CASCADE;


--
-- Name: sections_sites fk_xczdulwakzvfojqqzpwjntdmpnsibbyzgfnq; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sections_sites
    ADD CONSTRAINT fk_xczdulwakzvfojqqzpwjntdmpnsibbyzgfnq FOREIGN KEY ("siteId") REFERENCES public.sites(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: userpreferences fk_xectzczcdxgqakkmwhmalskmrnomyxbgdaxi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userpreferences
    ADD CONSTRAINT fk_xectzczcdxgqakkmwhmalskmrnomyxbgdaxi FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: supertableblocktypes fk_xfrrzrkdybfichnryliwbtkmltmvooydbscr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supertableblocktypes
    ADD CONSTRAINT fk_xfrrzrkdybfichnryliwbtkmltmvooydbscr FOREIGN KEY ("fieldId") REFERENCES public.fields(id) ON DELETE CASCADE;


--
-- Name: tags fk_xnhgbevbesktjieyqfuhptjiuudladcjkwox; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT fk_xnhgbevbesktjieyqfuhptjiuudladcjkwox FOREIGN KEY (id) REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: globalsets fk_xvxuviobsnvmvyxdeuikbimxystbqhbaoujk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.globalsets
    ADD CONSTRAINT fk_xvxuviobsnvmvyxdeuikbimxystbqhbaoujk FOREIGN KEY (id) REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: elements fk_ydscunulndoeszrjpvazgwzxztjrbdgdgwfz; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT fk_ydscunulndoeszrjpvazgwzxztjrbdgdgwfz FOREIGN KEY ("draftId") REFERENCES public.drafts(id) ON DELETE CASCADE;


--
-- Name: templatecachequeries fk_yevmjkaaigjqpzwpidkombowkhumqaaeqsge; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.templatecachequeries
    ADD CONSTRAINT fk_yevmjkaaigjqpzwpidkombowkhumqaaeqsge FOREIGN KEY ("cacheId") REFERENCES public.templatecaches(id) ON DELETE CASCADE;


--
-- Name: matrixblocks fk_yhdfkfahdgsjeocwfeviiijdunmfzpzbgmrp; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matrixblocks
    ADD CONSTRAINT fk_yhdfkfahdgsjeocwfeviiijdunmfzpzbgmrp FOREIGN KEY ("ownerId") REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: navigation_nodes fk_yigsidwolfpndxbwovilaiqprposjaykvceh; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.navigation_nodes
    ADD CONSTRAINT fk_yigsidwolfpndxbwovilaiqprposjaykvceh FOREIGN KEY (id) REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: supertableblocks fk_yvobgmgnfydcrzmysrdrezyfxvsrxoyhwmev; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supertableblocks
    ADD CONSTRAINT fk_yvobgmgnfydcrzmysrdrezyfxvsrxoyhwmev FOREIGN KEY (id) REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- Name: fieldlayoutfields fk_yvsrvmgwmjfrdxjmhfpfismxdbiibdnqvkti; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fieldlayoutfields
    ADD CONSTRAINT fk_yvsrvmgwmjfrdxjmhfpfismxdbiibdnqvkti FOREIGN KEY ("tabId") REFERENCES public.fieldlayouttabs(id) ON DELETE CASCADE;


--
-- Name: matrixblocks fk_yvtfziadnxnboxskwmmorphwililthgscmuf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matrixblocks
    ADD CONSTRAINT fk_yvtfziadnxnboxskwmmorphwililthgscmuf FOREIGN KEY ("fieldId") REFERENCES public.fields(id) ON DELETE CASCADE;


--
-- Name: craftidtokens fk_yzangeeeswcudkflgrhtruvzbjvpprhoqcuw; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.craftidtokens
    ADD CONSTRAINT fk_yzangeeeswcudkflgrhtruvzbjvpprhoqcuw FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: taggroups fk_zbgulkhpbuweikcprnczlgtygazioiiuwbfc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggroups
    ADD CONSTRAINT fk_zbgulkhpbuweikcprnczlgtygazioiiuwbfc FOREIGN KEY ("fieldLayoutId") REFERENCES public.fieldlayouts(id) ON DELETE SET NULL;


--
-- Name: relations fk_zdjipvjlqnrdospodgmsnwlzzywahcjdzoiv; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.relations
    ADD CONSTRAINT fk_zdjipvjlqnrdospodgmsnwlzzywahcjdzoiv FOREIGN KEY ("sourceId") REFERENCES public.elements(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

